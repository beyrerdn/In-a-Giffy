require 'test_helper'

class GifTest < ActiveSupport::TestCase
  should belong_to(:user)
  should have_many(:tags)
  should have_many(:taggings)
  should validate_uniqueness_of(:url)
  should_not allow_value("https://www.whatever.com/whatever.pdf").for(:url)

  test "test all_tags" do
    gif = Gif.create(
      :url => "http://media.giphy.com/media/UAHZijO91QCl2/giphy.gif",
      :all_tags => "#funny, #theOffice"
    )
    assert_equal "#funny, #theOffice", gif.all_tags
  end

  test "score handles upvote" do
    user1 = User.create(
      :email => "user1@user.com",
      :username => "user1",
      :password => "password")
    user2 = User.create(
      :email => "user2@user.com",
      :username => "user2",
      :password => "password")

      user1.gifs << Gif.create(
        :url => "http://media.giphy.com/media/fWa9ki6KrHTxe/giphy.gif",
        :all_tags => "#funny, #theOffice"
      )
      user1_gif = user1.gifs.first
      user2.likes(user1_gif)
      assert_equal 1, user1_gif.score
  end

  test "score handles downvote" do
    user1 = User.create(
      :email => "user1@user.com",
      :username => "user1",
      :password => "password")
    user2 = User.create(
      :email => "user2@user.com",
      :username => "user2",
      :password => "password")

      user1.gifs << Gif.create(
        :url => "http://media.giphy.com/media/fWa9ki6KrHTxe/giphy.gif",
        :all_tags => "#funny, #theOffice"
      )
      user1_gif = user1.gifs.first
      user2.dislikes(user1_gif)
      assert_equal -1, user1_gif.score
  end

  test "score handles upvote/downvote by same user" do
    user1 = User.create(
      :email => "user1@user.com",
      :username => "user1",
      :password => "password")
    user2 = User.create(
      :email => "user2@user.com",
      :username => "user2",
      :password => "password")

      user1.gifs << Gif.create(
        :url => "http://media.giphy.com/media/fWa9ki6KrHTxe/giphy.gif",
        :all_tags => "#funny, #theOffice"
      )
      user1_gif = user1.gifs.first
      user2.likes(user1_gif)
      user2.dislikes(user1_gif)
      assert_equal -1, user1_gif.score
  end

  test "score handles upvote/downvote by different users" do
    user1 = User.create(
      :email => "user1@user.com",
      :username => "user1",
      :password => "password")
    user2 = User.create(
      :email => "user2@user.com",
      :username => "user2",
      :password => "password")
    user3 = User.create(
      :email => "user3@user.com",
      :username => "user3",
      :password => "password")

      user1.gifs << Gif.create(
        :url => "http://media.giphy.com/media/fWa9ki6KrHTxe/giphy.gif",
        :all_tags => "#funny, #theOffice"
      )
      user1_gif = user1.gifs.first
      user2.likes(user1_gif)
      user3.dislikes(user1_gif)
      assert_equal 0, user1_gif.score
  end

end

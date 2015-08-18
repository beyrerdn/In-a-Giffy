require 'test_helper'

class UserTest < ActiveSupport::TestCase
  should have_many :gifs

  test "upvoted? handles single upvote" do
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
      assert user2.upvoted?(user1_gif)
  end

  test "downvoted? handles single downvote" do
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
      assert user2.downvoted?(user1_gif)
  end

  test "upvoted? handles upvote and downvote" do
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
      assert_not user2.upvoted?(user1_gif)
  end

  test "downvoted? handles upvote and downvote" do
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
      user2.likes(user1_gif)
      assert_not user2.downvoted?(user1_gif)
  end

end

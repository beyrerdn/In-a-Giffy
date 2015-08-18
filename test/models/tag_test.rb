require 'test_helper'

class TagTest < ActiveSupport::TestCase
  should have_many(:taggings)
  should have_many(:gifs)
  should validate_uniqueness_of(:name)

  test "tagged with" do
    gif1 = Gif.create(
      :url => "http://media.giphy.com/media/v8k9PaAQphzwI/giphy.gif",
      :all_tags => "#fingerguns"
    )
    gif2 = Gif.create(
      :url => "http://media.giphy.com/media/i7Mtc0aWPTZyo/giphy.gif",
      :all_tags => "#fingerguns"
    )
    gif3 = Gif.create(
      :url => "http://media.giphy.com/media/drwkO7nxYwaJi/giphy.gif",
      :all_tags => "#beedo"
    )
    assert_equal 2, Tag.tagged_with("#fingerguns").count
  end

end

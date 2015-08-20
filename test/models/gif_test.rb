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

end

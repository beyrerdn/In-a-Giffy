require 'test_helper'

class TaggingTest < ActiveSupport::TestCase
  should belong_to(:gif)
  should belong_to(:tag)
end

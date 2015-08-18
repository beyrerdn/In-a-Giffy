# http://www.sitepoint.com/tagging-scratch-rails/
class Tag < ActiveRecord::Base
  validates_uniqueness_of :name
  has_many :taggings
  has_many :gifs, through: :taggings

  def self.tagged_with(name)
    Tag.find_by_name(name).gifs
  end

end

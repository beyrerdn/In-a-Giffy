class Gif < ActiveRecord::Base
  validates_presence_of :url
  validates :url, uniqueness: true, on: :create
  validates_format_of :url,
                      :with => /\.gif\z/,
                      :on => :create,
                      :message => "Gifs only!"
  acts_as_votable
  belongs_to :user
  has_many :taggings
  has_many :tags, through: :taggings

  attachment :file

  #Did not know that ActiveRecord .where could accept a symbol
  def all_tags=(names)
    self.tags = names.split(",").map do |name|
      Tag.where(name: name.strip).first_or_create!
    end
  end

  def all_tags
    self.tags.map(&:name).join(", ")
  end

  #Alias for the db column "cached_votes_score"
  def score
    self.cached_votes_score
  end


end

class Gif < ActiveRecord::Base
  validates :url, uniqueness: true, on: :create, :allow_blank => true
  validates_format_of :url,
                      :with => /\.gif\z/,
                      :on => :create,
                      :allow_blank => true,
                      :message => "Gifs only!"
  attachment :file, content_type: "image/gif", extension: "gif"
  acts_as_votable
  belongs_to :user
  has_many :taggings
  has_many :tags, through: :taggings



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

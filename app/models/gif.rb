class Gif < ActiveRecord::Base
  validates :url, uniqueness: true, on: :create
  validates_format_of :url,
                      :with => /\.gif\z/,
                      :on => :create,
                      :message => "Gifs only!"
  belongs_to :user
  acts_as_votable

  #Alias for the db column "cached_votes_score"
  def score
    self.cached_votes_score
  end


end

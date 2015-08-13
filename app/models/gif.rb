class Gif < ActiveRecord::Base
  validates :url, uniqueness: true, on: :create
  validate :url_validation, on: :create
  belongs_to :user


  private

  def url_validation
    if !self.url.match(/(.+)\.gif/)
      errors.add(:url, "Gifs only!")
    end
  end

end

class Gif < ActiveRecord::Base
  validates :url, uniqueness: true, on: :create
  validates_format_of :url,
                      :with => /(.+)\.gif/,
                      :on => :create,
                      :flash => { :notice => "Gifs only!" }
  belongs_to :user


end

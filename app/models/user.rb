class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :gifs
  acts_as_voter

  def upvoted?(gif)
    voted_up_for?(gif)
  end

  def downvoted?(gif)
    voted_down_for?(gif)
  end

end

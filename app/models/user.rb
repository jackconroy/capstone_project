class User < ApplicationRecord

  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :user_tasting_notes
  has_many :tasting_notes, through: :user_tasting_notes

  has_many :votes
  has_many :beers, through: :votes

  def upvoted_beers
    beers_i_like  = []
    votes.where(vote_value: 1).map do |vote|
      beers_i_like << vote.beer
    end
    beers_i_like
  end
  
end

class User < ApplicationRecord

  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :user_tasting_notes
  has_many :tasting_notes, through: :user_tasting_notes

  has_many :votes
  has_many :beers, through: :votes
  
end

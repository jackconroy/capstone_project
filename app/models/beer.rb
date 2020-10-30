class Beer < ApplicationRecord

  has_many :beer_tasting_notes
  has_many :tasting_notes, through: :beer_tasting_notes

  has_many :votes


end

class TastingNote < ApplicationRecord

  has_many :beer_tasting_notes
  has_many :beers, through: :beer_tasting_notes
  
end

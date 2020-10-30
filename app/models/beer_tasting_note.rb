class BeerTastingNote < ApplicationRecord

  belongs_to :beer  
  belongs_to :tasting_note
  
end

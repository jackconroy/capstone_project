class UserTastingNote < ApplicationRecord

  belongs_to :tasting_note
  belongs_to :user
  
end

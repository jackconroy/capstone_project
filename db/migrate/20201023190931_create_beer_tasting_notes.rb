class CreateBeerTastingNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :beer_tasting_notes do |t|
      t.integer :beer_id
      t.integer :tasting_note_id

      t.timestamps
    end
  end
end

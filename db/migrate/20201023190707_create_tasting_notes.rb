class CreateTastingNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :tasting_notes do |t|
      t.string :keyword

      t.timestamps
    end
  end
end

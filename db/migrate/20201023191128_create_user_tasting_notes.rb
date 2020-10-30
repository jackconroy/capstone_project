class CreateUserTastingNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :user_tasting_notes do |t|
      t.integer :user_id
      t.integer :tasting_note_id

      t.timestamps
    end
  end
end

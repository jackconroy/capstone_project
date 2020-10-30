class CreateBeers < ActiveRecord::Migration[6.0]
  def change
    create_table :beers do |t|
      t.string :brewerydb_api_id
      t.string :name
      t.string :brewery
      t.decimal :abv
      t.string :style

      t.timestamps
    end
  end
end

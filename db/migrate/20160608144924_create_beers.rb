class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.integer :users_id
      t.integer :brewery_id
      t.string :tasting_notes
      t.integer :rating_1_10
      t.float :abv
      t.string :location_consumed
      t.string :style
      t.string :brewery_name
      t.string :beer_name

      t.timestamps

    end
  end
end

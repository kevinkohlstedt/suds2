class CreateBreweryToBeers < ActiveRecord::Migration
  def change
    create_table :brewery_to_beers do |t|
      t.integer :beer_id
      t.integer :brewery_id

      t.timestamps

    end
  end
end

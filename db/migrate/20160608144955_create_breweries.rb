class CreateBreweries < ActiveRecord::Migration
  def change
    create_table :breweries do |t|
      t.string :brewery_location
      t.string :brewery_name

      t.timestamps

    end
  end
end

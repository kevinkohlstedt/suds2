class Brewery < ActiveRecord::Base
has_many :beers

validates :brewery_name, :presence => true, :uniqueness => true
validates :brewery_location, :presence => true
validates :image_url, :presence => true

end

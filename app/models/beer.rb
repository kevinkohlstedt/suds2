class Beer < ActiveRecord::Base
belongs_to :users , :class_name => "User", :foreign_key => "users_id"
belongs_to :brewery

validates :beer_name, :presence => true, :uniqueness => true
validates :brewery_name, :presence => true
validates :style, :presence => true
validates :rating_1_10, :presence => true
validates :rating_1_10, :numericality => { :only_integer => true, :greater_than_or_equal_to => 1, :less_than_or_equal_to => 10}
validates :abv, :presence => true
validates :abv, :numericality => { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 100}
validates :location_consumed, :presence => true
validates :tasting_notes, :presence => true

end

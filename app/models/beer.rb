class Beer < ActiveRecord::Base
belongs_to :users , :class_name => "User", :foreign_key => "users_id"
belongs_to :brewery
end

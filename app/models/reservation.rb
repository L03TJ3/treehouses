class Reservation < ActiveRecord::Base
  belongs_to :tree_house
  belongs_to :user
end

class Location < ActiveRecord::Base
    has_many :poopstations
  attr_accessible :category, :city, :name, :state
end

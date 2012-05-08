class Location < ActiveRecord::Base
    has_many :poopstations
    has_many :posts
  attr_accessible :category, :city, :name, :state
end

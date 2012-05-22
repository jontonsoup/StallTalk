class Location < ActiveRecord::Base
    has_and_belongs_to_many :poopstations
    has_many :posts
  attr_accessible :category, :city, :name, :state
end

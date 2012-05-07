class Stalltalkian < ActiveRecord::Base
    has_and_belongs_to_many :poopstations
  attr_accessible :email, :name, :password
end

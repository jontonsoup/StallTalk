class Post < ActiveRecord::Base

    belongs_to :location
    belongs_to :stalltalkian
    belongs_to :poopstation
    validates :text, :presence => true
  attr_accessible :location_id, :poopstation_id, :stalltalkian_id, :text
end

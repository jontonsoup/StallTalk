class Post < ActiveRecord::Base

    belongs_to :location
    belongs_to :stalltalkian
    belongs_to :poopstation
  attr_accessible :location_id, :poopstation_id, :stalltalkian_id, :text
end

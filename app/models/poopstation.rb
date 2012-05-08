class Poopstation < ActiveRecord::Base
    has_and_belongs_to_many :stalltalkians
    belongs_to :location
    has_many :posts
  attr_accessible :gender, :location_id, :stalltalkian_id, :sticker_type
end

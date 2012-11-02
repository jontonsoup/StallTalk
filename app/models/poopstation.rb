class Poopstation < ActiveRecord::Base
    has_and_belongs_to_many :stalltalkians
    has_and_belongs_to_many :locations
    has_many :posts, :order => "created_at DESC"
    has_many :checkins
  attr_accessible :gender, :stalltalkian_id, :sticker_type
end

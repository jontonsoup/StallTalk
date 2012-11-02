class Checkin < ActiveRecord::Base
  attr_accessible :poopstations_id, :stalltalkian_id, :summary
  belongs_to :poopstations
  belongs_to :stalltalkian
  has_many :statuses
end

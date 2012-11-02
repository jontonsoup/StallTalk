class Status < ActiveRecord::Base
  attr_accessible :bathroomobjects_id, :checkin_id, :status
  belongs_to :checkin
  has_one :bathroomobject
end

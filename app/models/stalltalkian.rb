require 'bcrypt'
class Stalltalkian < ActiveRecord::Base
    include BCrypt

    has_many :posts
    has_and_belongs_to_many :poopstations
    attr_accessible :email, :name, :password

    public
    def self.hash_password(new_password)
      password = BCrypt::Password.create(new_password)
  end
end

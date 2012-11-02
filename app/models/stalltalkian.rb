require 'bcrypt'
class Stalltalkian < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
    include BCrypt

    has_many :posts
    has_many :checkins
    has_and_belongs_to_many :poopstations
    attr_accessible :email, :name, :password

    public
    def self.hash_password(new_password)
      password = BCrypt::Password.create(new_password)
  end
end

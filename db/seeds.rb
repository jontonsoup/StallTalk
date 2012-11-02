# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'bcrypt'

me = Stalltalkian.find_or_create_by_email(:name => "jon", :email => "friedmanj98@gmail.com", :password => BCrypt::Password.create("stall"))

bathrooms = Bathroomobjects.find_or_create_by_name(:name => "Sink")
bathrooms = Bathroomobjects.find_or_create_by_name(:name => "Toilet")
bathrooms = Bathroomobjects.find_or_create_by_name(:name => "Door")
bathrooms = Bathroomobjects.find_or_create_by_name(:name => "Walls")
bathrooms = Bathroomobjects.find_or_create_by_name(:name => "Mirror")
bathrooms = Bathroomobjects.find_or_create_by_name(:name => "Paper Towels")
bathrooms = Bathroomobjects.find_or_create_by_name(:name => "Lights")
bathrooms = Bathroomobjects.find_or_create_by_name(:name => "Floors")
bathrooms = Bathroomobjects.find_or_create_by_name(:name => "Toilet Paper")

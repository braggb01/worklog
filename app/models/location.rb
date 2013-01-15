class Location < ActiveRecord::Base
	has_many :jobs
  	attr_accessible :address

  	validates_presence_of :address
  	validates_uniqueness_of :address
end

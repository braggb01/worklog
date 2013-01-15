class Location < ActiveRecord::Base
	has_many :jobs
  	attr_accessible :address
end

class Entity < ActiveRecord::Base
	has_many :jobs
  	attr_accessible :name
end

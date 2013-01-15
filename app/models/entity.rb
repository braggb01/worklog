class Entity < ActiveRecord::Base
	has_many :jobs
  	attr_accessible :name

  	validates_presence_of :name
  	validates_uniqueness_of :name
end

class Product < ActiveRecord::Base
	has_many :jobs
  	attr_accessible :name, :vendor

  	validates_presence_of :name, :vendor
  	validates_uniqueness_of :name
end

class Product < ActiveRecord::Base
	has_many :jobs
  	attr_accessible :name, :vendor
end

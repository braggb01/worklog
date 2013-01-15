class Job < ActiveRecord::Base
	belongs_to :entity
	belongs_to :location
	belongs_to :product
	belongs_to :user
	attr_accessible :comment, :floor, :install_date, :entity_id, :location_id, :product_id, :user_id

  	validates_presence_of :install_date, :floor, :entity, :location, :product, :user
end

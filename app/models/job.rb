class Job < ActiveRecord::Base
	belongs_to :entity
	belongs_to :location
	belongs_to :product
	belongs_to :user
	attr_accessible :comment, :floor, :install_date, :entity_id, :location_id, :product_id, :user_id

  	validates_presence_of :install_date, :floor, :entity, :location, :product, :user

	include PgSearch
	pg_search_scope :search, against: [:install_date], using: {tsearch: {dictionary: "english"}}, associated_against: {user: :name, location: :address, entity: :name, product: [:vendor, :name] }

	def self.text_search(query)
	  if query.present?
	    search(query)
	  else
	    scoped
	  end
	end


end

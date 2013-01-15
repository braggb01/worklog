class Job < ActiveRecord::Base
  belongs_to :entity
  belongs_to :location
  belongs_to :product
  belongs_to :user
  attr_accessible :comment, :floor, :install_date
end

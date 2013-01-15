class User < ActiveRecord::Base
	has_many :jobs
  	attr_accessible :email, :name, :password, :password_confirmation
  	has_secure_password

  	validates_uniqueness_of :email
end

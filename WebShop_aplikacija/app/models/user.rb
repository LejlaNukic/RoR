class User < ActiveRecord::Base
	validates :username, presence: true, length: {minimum: 5}, uniqueness: true
	validates :password, presence: true, length: {minimum: 5}
	validates :mail, presence: true
	validates_format_of :mail,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/

	has_secure_password
	has_one :cart
	
end


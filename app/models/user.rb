class User < ActiveRecord::Base
	has_many :user_posts
	has_many :posts, through: :user_posts
	
	has_one :user_profile
	has_one :profile, through: :user_profile


	# attr_accessor :password


	# # def encrypt_password
	# # 	self.password_salt = BCrypt::Engine.generate_salt
	# # 	self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
	# # end

	# def self.authenticate(email, password)
	# 	user = User.where(email: email).first
	# 	if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
	# 			user
	# 		else
	# 			nil
	# 		end
	# 	end
end

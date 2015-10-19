class User < ActiveRecord::Base
	has_many :user_posts
	has_many :posts, through: :user_posts
	
	has_one :user_profile
	has_one :profile, through: :user_profile

	has_secure_password
	# attr_accessor :password

	# validates_confirmation_of :password
	# validates_presence_of :password, :on => :create
	# validates_presence_of :email
	# validates_uniqueness_of :email

	def self.authenticate(email, password)
		user = find_by_email(email)
		if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
			user
		else
			nil
		end
	end
end

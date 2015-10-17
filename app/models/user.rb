class User < ActiveRecord::Base
	has_many :user_posts
	has_many :posts, through: :user_posts
	
	has_one :user_profile
	has_one :profile, through: :user_profile

end

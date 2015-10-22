class PostsController < ApplicationController
	def create
		@post = Post.new(post_params)
		@post.user_id = params[:user_id]

		@post.save

		redirect_to user_path(@post.user)
	end

	def post_params
		params.require(:post).permit(:fname, :content)
	end

end

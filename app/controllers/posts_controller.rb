class PostsController < ApplicationController

	def index
		@all_posts = Post.all
	end

	def new
		@new_post = Post.new
	end

	def create
		@new_post = Post.new(post_params)
		if @new_post.save
			redirect_to posts_path
		else
			redirect_to new_post_path
		end
	end

	def show
		@post = Post.find(params[:id])
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
		if @post.update_attributes(post_params)
			redirect_to posts_path
		else
			redirect_to edit_post_path
		end
	end

	def destroy
		@post = Post.find(params[:id])
		if @post.delete
			redirect_to posts_path
		else
			redirect_to post_path
		end
	end

	private

	def post_params
		params.require(:post).permit(:position, :newsletter_issue_id)
	end
end

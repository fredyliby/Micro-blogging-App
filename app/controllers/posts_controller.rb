class PostsController < ApplicationController
		def index
			@posts = Post.all.order('created_at DESC')
		end

		def new
			@post = post.new
		end

		def create
			@post = Post.new(post_params)
			@post.save
			redirect_to @post
		end

private
		def post_params
			params.require(:post).permit(:title, :body)
		end
		def show
			@post =post.find(params[:id])
		end

end

class PostsController < ApplicationController
	def index
		@posts = Post.all.order('created_at DESC')
	end
	def new
		@post = post.new
	end
		def create
			@post = Post.new(post_params)
		   if @post.save
			redirect_to @post
		else render 'new'
		   end
		end
		def edit
			@post = Post.find(params[:id])
		end
	def update
			@post = Post.find(params[:id])
			if @post.update(params[:post].permit(:title, :body))
				redirect_to @post
			else
				render 'edit'
			end		
	end	

	def destroy
		@post = Post.find(params[:id])
		@Post.destroy
		redirect_to root_path
	end
private
		def post_params
			params.require(:post).permit(:title, :body)
		end
		def show
			@post =post.find(params[:id])
		end
end

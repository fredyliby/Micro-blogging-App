
class CommentsController < ApplicationController

	def index
	

	end
	def new
		 @post = Post.new(params[:post_id])
		# @comment = @post.comments
		@comment = Comment.new
	end

	def create
		@post = Post.find(params[:post_id])
    	@comment = @post.comments.create(params[:comment]
		# if @comment.save
			# flash[:success] = "Comment created!"
			# redirect_to @post
		# else
		# redirect_to post_path(@post)
		# end
	end


	def destroy
		@post = Post.find(params[:post_id])
		@comment = @post.comments.find(params[:id])
		@comment.destroy

		redirect_to post_path(@post)
	end

	def show
		@post = Post.find(params[:post_id])
		@comment = @post.comments.find(params[:id])
	end



end

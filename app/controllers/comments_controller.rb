
class CommentsController < ApplicationController

	def index
		  @comments = Comment.all
	end

	def new
		
	end

	def create
		 @post = Post.find(params[:post_id])
		 @comment = Comment.new(comment_params)
		# @comment = @post.comments.create(params[comment_params])
		 @comment.user = current_user
		@comment.post = @post
		if @comment.save
			flash[:success] = "Comment created!"
			redirect_to @post
		else
			redirect_to post_path(@post)
		end
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

		private

		def comment_params
			params.require(:comment).permit(:body, :post_id)

		end
end

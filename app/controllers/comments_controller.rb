
class CommentsController < ApplicationController
	def create
		@post = Post.find(params[:comments][:id])
		@comment = @post.comments.create(params[:comment].permit(:name, :body))
		if @comments.save
			redirect_to @post
		else
		redirect_to post_path(@post)
		end
	end

	def new
		@comment = @post.comments
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

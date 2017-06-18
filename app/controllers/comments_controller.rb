class CommentsController < ApplicationController

	before_action :authenticate_user!

	def create
	  blog = Blog.find(params[:blog_id])
	  blog.comments.create(comments_params)

	  redirect_to blog
	end

	private
	  def comments_params
	    params.require(:comment).permit(:body).merge(user: current_user)
	  end


end

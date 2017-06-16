class BlogsController < ApplicationController

	before_action :authenticate_user!, except: [:index, :show]

	def index
		@blogs = Blog.order('created_at DESC')
	end

	def show
		@blog = Blog.find(params[:id])
	end

end

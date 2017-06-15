class BlogsController < ApplicationController

	def index
		@blogs = Blog.order('updated_at DESC')
	end

	

end

class BlogsController < ApplicationController

	before_action :authenticate_user!, except: [:index, :show]

	def index
		@blogs = Blog.order('created_at DESC')
	end

	def new
  		@blog = Blog.new
	end

	def edit
  		@blog = Blog.find(params[:id])
	end

	def show
		@blog = Blog.find(params[:id])
	end

	def create
	  @blog = Blog.new(blog_params)
	  @blog.user = current_user
	  if @blog.save
	    redirect_to blogs_path, notice: "El blog fue publicado con éxito"
	  else
	    render :new
	  end
	end

	def update
	  @blog = Blog.find(params[:id])
	  if @blog.update(blog_params)
	    redirect_to blogs_path, notice: "El blog ha sido modificado con éxito"
	  else
	    render :edit
	  end
	end

	def destroy
	  blog = Blog.find(params[:id])
	  blog.destroy

	  redirect_to blog_path, notice: "El blog fue eliminado con éxito"
	end

	private
	  def blog_params
	    params.require(:blog).permit(:title, :body)
	  end

end

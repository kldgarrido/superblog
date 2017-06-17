module BlogsHelper
	def form_title
		@blog.new_record? ? "Publicar Blog" : "Modificar Blog"
	end
end

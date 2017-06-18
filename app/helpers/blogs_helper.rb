module BlogsHelper
	def form_title
		@blog.new_record? ? "Crear Blog" : "Modificar Blog"
	end
end

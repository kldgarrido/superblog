module BlogsHelper
	def form_title
		@blog.new_record? ? "Crear Articulo" : "Modificar Articulo"
	end
end

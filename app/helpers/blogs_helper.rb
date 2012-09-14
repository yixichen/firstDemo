
module BlogsHelper
	def join_tags(blog)
		blog.tags.map { |e| e.name  }.join(",")	
	end
end

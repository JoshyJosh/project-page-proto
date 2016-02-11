module MainPagesHelper
	
	# For the category tag filter
	  @@category_array = []
	
	def sortable(column, title = nil)
		direction = (column == params[:sort] && params[:direction] == "asc") ? "desc" : "asc"
		
		# check if sort parameter is being used
		if params[:sort] == column
			title += direction == "asc" ? " ▾" : " ▴"
		end
		
		link_to title, :sort => column, :direction => direction
	end
	
	def categorizable(category)
	
		# Prototype multiple category select
		#if @@category_array.include?(category) 
		#	@@category_array.delete(category)
		#else 
		#	@@category_array << category
		#end
		
		#category_select =  @@category_array
		
		category_select = params[:cat_sort] == category ? params[:cat_sort] = nil : category

		link_to category, :cat_sort => category_select, :sort => params[:sort], :direction => params[:direction]
	end
end

module MainPagesHelper
	def sortable(column, title = nil)
		direction = (column == params[:sort] && params[:direction] == "asc") ? "desc" : "asc"
		
		# check if sort parameter is being used
		if params[:sort] == column
			title += direction == "asc" ? " ▾" : " ▴"
		end
		
		link_to title, :sort => column, :direction => direction
	end
end

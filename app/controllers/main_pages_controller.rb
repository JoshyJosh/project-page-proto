class MainPagesController < ApplicationController
	helper_method :sort_column, :sort_direction
	
	@@proj_categories = Category.all
	@@projects = Project.all
	
  def home
		@some_stuff = sort_column
  end
  
  def about
  end

  def proj_list
		@projects = Project.order(sort_column + " " + sort_direction)
		@proj_categories = @@proj_categories.select(:cat_title).distinct
		@test_down_carret = "▾"
		@test_up_carret = "▴"
  end
  
  private
  
  #TODO for sorting the app table
  def sort_column
		Project.column_names.include?(params[:sort]) ? params[:sort] : "publish_date"
	end
	
	def sort_direction
		%w[asc desc].include?(params[:direction]) ? params[:direction] : "desc"
	end
end

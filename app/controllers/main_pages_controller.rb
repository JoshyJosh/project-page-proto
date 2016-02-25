class MainPagesController < ApplicationController
	helper_method :sort_column, :sort_direction, :sort_category, :cat_sort_params
	
	@@proj_categories = Category.all
	@@projects = Project.all
  
  def about
  end

  def proj_list
  	
  	cat_sort_params()
  	
		@proj_categories = @@proj_categories.select(:cat_title).distinct
		
		if params[:cat_sort].present?
					@projects = Project.where(id: sort_category).order(sort_column + " " + sort_direction)
		else
					@projects = Project.order(sort_column + " " + sort_direction)
		end
		
  end
  
  private
  
  # Workaround for .permit for non-model params
  def cat_sort_params
		@test_case = request.fullpath
		
		if /proj_list\?/.match(@test_case).nil? == false
			if /sort=/.match(@test_case).nil? == true && /direction=/.match(@test_case).nil? == true
				redirect_to "/404"
			end
		end
	end
  
  # For sorting the app table
  def sort_column
		Project.column_names.include?(params[:sort]) ? params[:sort] : "publish_date"
	end
	
	def sort_direction
		%w[asc desc].include?(params[:direction]) ? params[:direction] : "desc"
	end
	
	# Prototype
	def sort_category
			id = Category.where("cat_title = ?", params[:cat_sort]).select("project_id")
			id.collect{|x| x.project_id}
	end
end

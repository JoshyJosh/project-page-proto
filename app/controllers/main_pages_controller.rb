class MainPagesController < ApplicationController
	
	@@proj_categories = Category.all
	@@projects = Project.all
	
  def home
		@some_stuff = @@proj_categories
  end
  
  def about
  end

  def proj_list
		@projects = @@projects
		@proj_categories = @@proj_categories
  end
end

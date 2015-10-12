class MainPagesController < ApplicationController
	
	@@proj_categories = ["ruby", "javascript", "css", "php"]
	
  def home
		@some_stuff = @@some_stuff
  end
  
  def about
  end

  def proj_list
		@projects = Project.all
		@proj_categories = @@proj_categories
  end
end

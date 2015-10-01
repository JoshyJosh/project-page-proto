class MainPagesController < ApplicationController
	
	@@some_stuff = ["ruby", "javascript", "css", "php"]
	
  def home
		@some_stuff = @@some_stuff
  end
  
  def about
  end

  def proj_list
  end
end

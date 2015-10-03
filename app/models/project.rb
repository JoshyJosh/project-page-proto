class Project < ActiveRecord::Base
	serialize :categories,Array
end

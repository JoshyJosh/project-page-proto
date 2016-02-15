require 'test_helper'

class ProjectTest < ActiveSupport::TestCase

	# setup called before each test
	def setup
		@project = Project.create(title: "Test Project", 
													 description: "This is a project for testing.",
													 publish_date: Date.new(2015, 1, 20))
	  @categories = @project.categories.build(cat_title: "ruby")
	end
	
	# check that setup project is valid
	test "test project should be valid" do
		assert @project.valid?
	end
	
	# check that projects have all attributes
	test "project without attributes is invalid" do
		@no_attr_project = Project.new()
		assert_not @no_attr_project.valid?
	end
	
	test "project without title should be invalid" do
		@no_title_project = @project
		@no_title_project.title = ""
		assert_not @no_title_project.valid?
	end
	
	test "project without description should be invalid" do
		@no_desc_project =  @project
		@no_desc_project.description = ""
		assert_not @no_desc_project.valid?
	end
	
	test "project without publish_date should be invalid" do
		@no_date_project = @project
		@no_date_project.publish_date = ""
		assert_not @no_date_project.valid?
	end
end

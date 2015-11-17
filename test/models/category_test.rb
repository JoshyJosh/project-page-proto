require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

	def setup
		@project = projects(:one)
		@category = @project.categories.build(name: "ruby")
	end
	
	test "should be valid" do
		assert @category.valid?
	end
end

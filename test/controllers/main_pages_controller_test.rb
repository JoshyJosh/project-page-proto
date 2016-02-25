require 'test_helper'

class MainPagesControllerTest < ActionController::TestCase

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get proj_list" do
		get :proj_list
		assert_response :success
  end
  
  test "should accept params" do
		get(:proj_list, {'sort' => 'publish_date'}, {'direction' => 'asc'})
		assert_response :success
  end
  
  test "should not accept unknown params" do
		get(:proj_list, {'burek' => 'mesni'}, {'foo' => 'bar'})
		assert_redirected_to "/404"
	end
	
end

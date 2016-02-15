require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get home" do
    get :index
    assert_response :success
  end

end

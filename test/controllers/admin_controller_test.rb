require 'test_helper'

class AdminControllerTest < ActionController::TestCase
  test "should get admin_management" do
    get :admin_management
    assert_response :success
  end

end

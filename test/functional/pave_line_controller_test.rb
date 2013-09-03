require 'test_helper'

class PaveLineControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end

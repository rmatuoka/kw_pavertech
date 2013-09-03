require 'test_helper'

class SpecialCatalogControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end

require 'test_helper'

class QuotationsControllerTest < ActionController::TestCase
  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Quotation.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Quotation.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to quotation_url(assigns(:quotation))
  end

  def test_show
    get :show, :id => Quotation.first
    assert_template 'show'
  end
end

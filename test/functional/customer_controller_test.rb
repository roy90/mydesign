require 'test_helper'

class CustomerControllerTest < ActionController::TestCase
  test "should get listcustomer" do
    get :listcustomer
    assert_response :success
  end

  test "should get findcustomer" do
    get :findcustomer
    assert_response :success
  end

  test "should get editcustomer" do
    get :editcustomer
    assert_response :success
  end

  test "should get addcustomer" do
    get :addcustomer
    assert_response :success
  end

end

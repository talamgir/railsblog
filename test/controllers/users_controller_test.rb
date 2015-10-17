require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get signup" do
    get :signup
    assert_response :success
  end

  test "should get profile" do
    get :profile
    assert_response :success
  end

  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get logout" do
    get :logout
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

end

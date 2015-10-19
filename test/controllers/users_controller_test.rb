require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get edit" do
    get :edit
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

  test "should get profile" do
    get :profile
    assert_response :success
  end

  test "should get signup" do
    get :signup
    assert_response :success
  end

  test "should get postsyoulike" do
    get :postsyoulike
    assert_response :success
  end

  test "should get thisweek" do
    get :thisweek
    assert_response :success
  end

  test "should get earlier" do
    get :earlier
    assert_response :success
  end

  test "should get bestoftoday" do
    get :bestoftoday
    assert_response :success
  end

  test "should get bestofgroup" do
    get :bestofgroup
    assert_response :success
  end

  test "should get topposts" do
    get :topposts
    assert_response :success
  end

end

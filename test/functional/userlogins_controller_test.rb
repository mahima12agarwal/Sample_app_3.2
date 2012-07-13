require 'test_helper'

class UserloginsControllerTest < ActionController::TestCase
  setup do
    @userlogin = userlogins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:userlogins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create userlogin" do
    assert_difference('Userlogin.count') do
      post :create, userlogin: @userlogin.attributes
    end

    assert_redirected_to userlogin_path(assigns(:userlogin))
  end

  test "should show userlogin" do
    get :show, id: @userlogin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @userlogin
    assert_response :success
  end

  test "should update userlogin" do
    put :update, id: @userlogin, userlogin: @userlogin.attributes
    assert_redirected_to userlogin_path(assigns(:userlogin))
  end

  test "should destroy userlogin" do
    assert_difference('Userlogin.count', -1) do
      delete :destroy, id: @userlogin
    end

    assert_redirected_to userlogins_path
  end
end

require 'test_helper'

class EndusersControllerTest < ActionController::TestCase
  setup do
    @enduser = endusers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:endusers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create enduser" do
    assert_difference('Enduser.count') do
      post :create, :enduser => @enduser.attributes
    end

    assert_redirected_to enduser_path(assigns(:enduser))
  end

  test "should show enduser" do
    get :show, :id => @enduser.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @enduser.to_param
    assert_response :success
  end

  test "should update enduser" do
    put :update, :id => @enduser.to_param, :enduser => @enduser.attributes
    assert_redirected_to enduser_path(assigns(:enduser))
  end

  test "should destroy enduser" do
    assert_difference('Enduser.count', -1) do
      delete :destroy, :id => @enduser.to_param
    end

    assert_redirected_to endusers_path
  end
end

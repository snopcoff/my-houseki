require 'test_helper'

class FdTypesControllerTest < ActionController::TestCase
  setup do
    @fd_type = fd_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fd_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fd_type" do
    assert_difference('FdType.count') do
      post :create, fd_type: { foodtype: @fd_type.foodtype, name: @fd_type.name }
    end

    assert_redirected_to fd_type_path(assigns(:fd_type))
  end

  test "should show fd_type" do
    get :show, id: @fd_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fd_type
    assert_response :success
  end

  test "should update fd_type" do
    patch :update, id: @fd_type, fd_type: { foodtype: @fd_type.foodtype, name: @fd_type.name }
    assert_redirected_to fd_type_path(assigns(:fd_type))
  end

  test "should destroy fd_type" do
    assert_difference('FdType.count', -1) do
      delete :destroy, id: @fd_type
    end

    assert_redirected_to fd_types_path
  end
end

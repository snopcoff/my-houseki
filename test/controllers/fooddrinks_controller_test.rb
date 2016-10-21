require 'test_helper'

class FooddrinksControllerTest < ActionController::TestCase
  setup do
    @fooddrink = fooddrinks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fooddrinks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fooddrink" do
    assert_difference('Fooddrink.count') do
      post :create, fooddrink: { address: @fooddrink.address, created_at: @fooddrink.created_at, file: @fooddrink.file, name: @fooddrink.name, type: @fooddrink.type, user_id: @fooddrink.user_id }
    end

    assert_redirected_to fooddrink_path(assigns(:fooddrink))
  end

  test "should show fooddrink" do
    get :show, id: @fooddrink
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fooddrink
    assert_response :success
  end

  test "should update fooddrink" do
    patch :update, id: @fooddrink, fooddrink: { address: @fooddrink.address, created_at: @fooddrink.created_at, file: @fooddrink.file, name: @fooddrink.name, type: @fooddrink.type, user_id: @fooddrink.user_id }
    assert_redirected_to fooddrink_path(assigns(:fooddrink))
  end

  test "should destroy fooddrink" do
    assert_difference('Fooddrink.count', -1) do
      delete :destroy, id: @fooddrink
    end

    assert_redirected_to fooddrinks_path
  end
end

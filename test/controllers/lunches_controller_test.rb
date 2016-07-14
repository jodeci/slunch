require 'test_helper'

class LunchesControllerTest < ActionController::TestCase
  setup do
    @lunch = lunches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lunches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lunch" do
    assert_difference('Lunch.count') do
      post :create, params: { lunch: { name: @lunch.name, location: @lunch.location } }
    end

    assert_redirected_to lunch_path(assigns(:lunch))
  end

  test "should show lunch" do
    get :show, params: { id: @lunch }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { id: @lunch }
    assert_response :success
  end

  test "should update lunch" do
    patch :update, params: { id: @lunch, lunch: { name: @lunch.name, location: @lunch.location } }
    assert_redirected_to lunch_path(assigns(:lunch))
  end

  test "should destroy lunch" do
    assert_difference('Lunch.count', -1) do
      delete :destroy, params: { id: @lunch }
    end

    assert_redirected_to lunches_path
  end
end

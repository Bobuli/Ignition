require 'test_helper'

class MonthsControllerTest < ActionController::TestCase
  setup do
    @month = periodes(:Januar)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:months)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create month" do
    assert_difference('Month.count') do
      post :create, :month => @month.attributes
    end

    assert_redirected_to month_path(assigns(:month))
  end

  test "should show month" do
    get :show, :id => @month.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @month.to_param
    assert_response :success
  end

  test "should update month" do
    put :update, :id => @month.to_param, :month => @month.attributes
    assert_redirected_to month_path(assigns(:month))
  end

  test "should destroy month" do
    assert_difference('Month.count', -1) do
      delete :destroy, :id => @month.to_param
    end

    assert_redirected_to months_path
  end
end

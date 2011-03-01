require 'test_helper'

class PeriodesControllerTest < ActionController::TestCase
  setup do
    @periode = periodes(:PeriodeOne)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:periodes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create periode" do
    assert_difference('Periode.count') do
      post :create, :periode => @periode.attributes
    end

    assert_redirected_to periode_path(assigns(:periode))
  end

  test "should show periode" do
    get :show, :id => @periode.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @periode.to_param
    assert_response :success
  end

  test "should update periode" do
    put :update, :id => @periode.to_param, :periode => @periode.attributes
    assert_redirected_to periode_path(assigns(:periode))
  end

  test "should destroy periode" do
    assert_difference('Periode.count', -1) do
      delete :destroy, :id => @periode.to_param
    end

    assert_redirected_to periodes_path
  end
  
  
  ####################################################################
  # Sortables
  ####################################################################
  
   test "sort within a sortable" do
     post :sort, :periodeId => "1", "1"=>["1", "2"], :planId =>"10"
     assert_response :success
   end
  
  
 
end

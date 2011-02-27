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
  
  
  test "sort within two sortables" do
#    Changed 2 to second sortable...
    assert_difference('periodes(:Montag).tasks.count', 1) do
      post :sort, :periodeId => "1", "1"=>["1"], :planId =>"10"  
      assert_response :success
#      post :sort, :id => "Day3", "Day3"=>["2", "4"], :iter =>"1"
#      assert_response :success
    end
    
    #Changed 4 to first one
  #  assert_difference('periodes(:Day1).tasks.count', 1) do
  #    post :sort, :id => "Day1", "Day1"=>["7", "8", "10"], :iter =>"1"
  #    assert_response :success
#      post :sort, :id => "Day3", "Day3"=>["2"], :iter =>"1"
#      assert_response :success
 #  end     
  end  
  
  
  test "sort elem to an empty sortable" do
    
    assert_difference('periodes(:Day2).tasks.count', 1) do
      post :sort, :id => "Day2", "Day2"=>["3"], :iter =>"1"
      assert_response :success
#      post :sort, :id => "Day1", "Day1"=>["1","2"], :iter =>"1"
#      assert_response :success
    end    
  end

  test "sort elem to an sortable and empty src sortable" do

      #10 belongs to Day3
     assert_difference('periodes(:Day3).tasks.count', 0) do
#      post :sort, :id => "Day1", "Day1"=>["7", "8", "9", "10"], :iter =>"1"
#      assert_response :success
      post :sort, :id => "Day3", :iter =>"1"
      assert_response :success
     end
  end
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end

require 'test_helper'

class TemplateTasksControllerTest < ActionController::TestCase
  setup do
    @template_task = template_tasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:template_tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create template_task" do
    assert_difference('TemplateTask.count') do
      post :create, :template_task => @template_task.attributes
    end

    assert_redirected_to template_task_path(assigns(:template_task))
  end

  test "should show template_task" do
    get :show, :id => @template_task.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @template_task.to_param
    assert_response :success
  end

  test "should update template_task" do
    put :update, :id => @template_task.to_param, :template_task => @template_task.attributes
    assert_redirected_to template_task_path(assigns(:template_task))
  end

  test "should destroy template_task" do
    assert_difference('TemplateTask.count', -1) do
      delete :destroy, :id => @template_task.to_param
    end

    assert_redirected_to template_tasks_path
  end
end

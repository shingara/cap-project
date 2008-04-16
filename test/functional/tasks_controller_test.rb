require File.dirname(__FILE__) + '/../test_helper'

class TasksControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index, :project_id => 1
    assert_response :redirect
  end

  def test_should_get_new
    get :new, :project_id => 1
    assert_response :success
  end

  def test_should_create_task
    assert_difference('Task.count') do
      post :create, :project_id => 1, :task => {:title => 'title', :description => 'description', :project_id => 1 }
    end

    assert_redirected_to project_task_path(1, assigns(:task))
  end

  def test_should_show_task
    get :show, :project_id => 1, :id => tasks(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :project_id => 1, :id => tasks(:one).id
    assert_response :success
  end

  def test_should_update_task
    put :update, :project_id => 1, :id => tasks(:one).id, :task => { }
    assert_redirected_to project_task_path(1, assigns(:task))
  end

  def test_should_destroy_task
    assert_difference('Task.count', -1) do
      delete :destroy, :project_id => 1, :id => tasks(:one).id
    end

    assert_redirected_to project_tasks_path(1)
  end
end

require File.dirname(__FILE__) + '/../test_helper'

class ProjectsControllerTest < ActionController::TestCase

  fixtures :users
  include AuthenticatedTestHelper

  def test_should_get_index
    login_as :quentin
    get :index
    assert_response :success
    assert_not_nil assigns(:projects)
  end

  def test_should_get_new
    login_as :quentin
    get :new
    assert_response :success
  end

  def test_should_create_project
    login_as :quentin
    assert_difference('Project.count') do
      post :create, :project => {:title => 'title', :description => 'description' }
    end

    assert_redirected_to project_path(assigns(:project))
  end

  def test_should_show_project
    login_as :quentin
    get :show, :id => projects(:one).id
    assert_response :success
  end

  def test_should_get_edit
    login_as :quentin
    get :edit, :id => projects(:one).id
    assert_response :success
  end

  def test_should_update_project
    login_as :quentin
    put :update, :id => projects(:one).id, :project => { }
    assert_redirected_to project_path(assigns(:project))
  end

  def test_should_destroy_project
    login_as :quentin
    assert_difference('Project.count', -1) do
      delete :destroy, :id => projects(:one).id
    end

    assert_redirected_to projects_path
  end
end

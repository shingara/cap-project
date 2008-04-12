require File.dirname(__FILE__) + '/../test_helper'

class TaskTest < ActiveSupport::TestCase

  def setup
    @task = Task.new
  end

  def test_need_title
    assert_no_difference('Task.count') do
      @task.description = 'ok'
      @task.project_id = 1
      @task.save
    end
  end
  
  def test_need_description
    assert_no_difference('Task.count') do
      @task.title = 'title'
      @task.project_id = 1
      @task.save
    end
  end
  
  def test_need_project
    assert_no_difference('Task.count') do
      @task.title = 'title'
      @task.description = 'description'
      @task.save
    end
  end

end

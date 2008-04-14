require File.dirname(__FILE__) + '/../test_helper'

class ProjectTest < ActiveSupport::TestCase
  fixtures :projects

  def setup
    @project = Project.new
  end

  def teardown
  end

  # Replace this with your real tests.
  def test_presence_title
    assert_no_difference('Project.count') do
      @project.description = 'description'
      @project.save
    end
  end
  
  def test_presence_description
    assert_no_difference('Project.count') do
      @project.title = 'title'
      @project.save
    end
  end

  def test_insert
    assert_difference('Project.count') do
      @project.title = 'title'
      @project.description = 'description'
      @project.save
    end
  end

  def test_uniqueness
    assert_no_difference('Project.count') do
      @project.title = 'MyString'
      @project.description = 'description'
      @project.save
    end
  end
end

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
    assert_equal 2, Project.count
    @project.description = 'description'
    @project.save
    assert_equal 2, Project.count
  end
  
  def test_presence_description
    assert_equal 2, Project.count
    @project.title = 'title'
    @project.save
    assert_equal 2, Project.count
  end
end

class Task < ActiveRecord::Base
  validates_presence_of :title, :description, :project_id
end

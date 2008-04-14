class Project < ActiveRecord::Base
  validates_presence_of :title, :description
  validates_uniqueness_of :title
end

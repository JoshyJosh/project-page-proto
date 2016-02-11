class Category < ActiveRecord::Base
  belongs_to :project
  validates :project_id, presence: true
  validates :cat_title, presence: true
end

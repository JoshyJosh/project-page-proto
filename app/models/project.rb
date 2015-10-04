class Project < ActiveRecord::Base
	serialize :categories,Array
	validates :title, presence: true
	validates :description, presence: true
	validates :publish_date, presence: true
	validates :categories, presence: true
end

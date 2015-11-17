class Project < ActiveRecord::Base
	validates :title, presence: true
	validates :description, presence: true
	validates :publish_date, presence: true
	has_many :categories
end

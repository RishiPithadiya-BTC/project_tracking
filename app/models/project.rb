class Project < ActiveRecord::Base
	validates :name, presence: true, length: { maximum: 50 }
	validates :description, presence: true
	validates :billing_type, presence: true
end

class Project < ActiveRecord::Base
  belongs_to :client
	validates :name, presence: true, length: { maximum: 50 }
	validates :description, presence: true
end

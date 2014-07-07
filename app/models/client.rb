class Client < ActiveRecord::Base
  has_many :projects
  validates :name, presence: true, length: { maximum: 50 }
  validates :city, presence: true
end

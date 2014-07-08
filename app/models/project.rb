class Project < ActiveRecord::Base
  belongs_to :client
	default_scope -> { order('created_at DESC')}
  validates :name, presence: true, length: { maximum: 50 }
	validates :description, presence: true

  def self.search(search,status,client)
  if search
    find(:all, :conditions => ['name LIKE ? OR status LIKE ? OR client_id LIKE ?',search,status,client])
  else
    find(:all)
  end
  end
end

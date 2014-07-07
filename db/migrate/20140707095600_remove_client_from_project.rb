class RemoveClientFromProject < ActiveRecord::Migration
  def change
    remove_column :projects, :client, :string
  end
end

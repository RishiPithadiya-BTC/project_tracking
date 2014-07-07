class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :code
      t.string :description
      t.string :billing_type
      t.datetime :start_date
      t.datetime :deadline_date
      t.datetime :end_date
      t.string :github_url
      t.string :status

      t.timestamps
    end
    add_index :projects, [:client_id, :created_at]
  end
end

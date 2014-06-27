json.array!(@projects) do |project|
  json.extract! project, :id, :name, :code, :description, :billing_type, :start_date, :deadline_date, :end_date, :github_url, :status
  json.url project_url(project, format: :json)
end

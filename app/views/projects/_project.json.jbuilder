json.extract! project, :id, :name, :start_date, :end_date, :status, :active, :created_at, :updated_at
json.url project_url(project, format: :json)

json.extract! user, :id, :name, :email, :age, :nickname, :active, :project_id, :created_at, :updated_at
json.url user_url(user, format: :json)

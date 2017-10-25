json.extract! new_user, :id, :name, :email, :login, :created_at, :updated_at
json.url new_user_url(new_user, format: :json)

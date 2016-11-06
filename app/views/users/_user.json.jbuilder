json.extract! user, :id, :name, :email, :password_digest, :is_tutor, :approved, :approved_at, :banned, :banned_at, :is_admin, :created_at, :updated_at
json.url user_url(user, format: :json)
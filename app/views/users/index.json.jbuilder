json.array!(@users) do |user|
  json.extract! user, :id, :email, :name, :password, :disabled
  json.url user_url(user, format: :json)
end

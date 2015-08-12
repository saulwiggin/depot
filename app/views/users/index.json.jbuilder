json.array!(@users) do |user|
  json.extract! user, :id, :name, :password_diggest
  json.url user_url(user, format: :json)
end

json.array!(@users) do |user|
  json.extract! user, :name, :userId, :password
  json.url user_url(user, format: :json)
end

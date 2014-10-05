json.array!(@users) do |user|
  json.extract! user, :id, :email, :password, :name, :school, :twitter, :linkedin
  json.url user_url(user, format: :json)
end

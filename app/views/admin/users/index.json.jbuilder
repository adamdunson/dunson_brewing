json.array!(@users) do |user|
  json.extract! user, :title, :body, :user_id
  json.url admin_user_url(user, format: :json)
end

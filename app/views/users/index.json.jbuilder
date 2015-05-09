json.array!(@users) do |user|
  json.extract! user, :id, :full_name, :instagram, :twitter, :vk, :cont_mail, :description
  json.url user_url(user, format: :json)
end

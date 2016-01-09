json.array!(@skytouch_users) do |skytouch_user|
  json.extract! skytouch_user, :id, :uid, :first_name, :last_name, :email
  json.url skytouch_user_url(skytouch_user, format: :json)
end

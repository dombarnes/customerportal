json.array!(@users) do |user|
  json.extract! user, :email, :first_name, :last_name, :password_salt, :pasword_hash, :reseller, :reseller_id, :admin, :staff
  json.url user_url(user, format: :json)
end

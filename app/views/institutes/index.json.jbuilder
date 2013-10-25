json.array!(@institutes) do |institute|
  json.extract! institute, :name, :subdomain, :address, :contact, :contact_tel, :admin_contact, :admin_contact_tel, :subscription_type, :subscription_start_date, :subscription_end_date, :reseller_id, :reseller_contact
  json.url institute_url(institute, format: :json)
end

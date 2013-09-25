json.array!(@company_profiles) do |company_profile|
  json.extract! company_profile, :description, :photo
  json.url company_profile_url(company_profile, format: :json)
end

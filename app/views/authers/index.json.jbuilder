json.array!(@authers) do |auther|
  json.extract! auther, :id, :name, :DOB
  json.url auther_url(auther, format: :json)
end

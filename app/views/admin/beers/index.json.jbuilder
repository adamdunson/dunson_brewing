json.array!(@beers) do |beer|
  json.extract! beer, :name, :brewed_on, :beer_style_id, :description
  json.url admin_beer_url(beer, format: :json)
end

json.array!(@beers) do |beer|
  json.extract! beer, :name, :brew_date, :beer_style_id
  json.url admin_beer_url(beer, format: :json)
end

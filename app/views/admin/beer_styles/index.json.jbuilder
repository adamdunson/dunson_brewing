json.array!(@beer_styles) do |beer_style|
  json.extract! beer_style, :name, :recipe, :description
  json.url admin_beer_style_url(beer_style, format: :json)
end

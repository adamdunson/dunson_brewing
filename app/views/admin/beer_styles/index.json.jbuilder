json.array!(@beer_styles) do |beer_style|
  json.extract! beer_style, :name, :beer_style_category_id
  json.url admin_beer_style_url(beer_style, format: :json)
end

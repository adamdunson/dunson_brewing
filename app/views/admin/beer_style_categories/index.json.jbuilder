json.array!(@beer_style_categories) do |beer_style_category|
  json.extract! beer_style_category, :name, :description
  json.url admin_beer_style_category_url(beer_style_category, format: :json)
end

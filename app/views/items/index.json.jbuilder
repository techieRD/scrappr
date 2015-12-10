json.array!(@items) do |item|
  json.extract! item, :id, :name, :description, :condition, :price, :image, :category_id, :street_address
  json.url item_url(item, format: :json)
end

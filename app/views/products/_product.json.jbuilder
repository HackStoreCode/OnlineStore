json.extract! product, :id, :name, :price, :description, :available, :created_at, :updated_at
json.url product_url(product, format: :json)

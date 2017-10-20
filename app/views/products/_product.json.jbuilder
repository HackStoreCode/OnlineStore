<<<<<<< HEAD
json.extract! product, :id, :name, :price, :description, :available, :created_at, :updated_at
=======
json.extract! product, :id, :description, :price, :image, :user_id, :created_at, :updated_at
>>>>>>> 52866adece2ba5d573a87ea1be8b3d53c6e7dc4f
json.url product_url(product, format: :json)

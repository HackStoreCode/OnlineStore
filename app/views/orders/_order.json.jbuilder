json.extract! order, :id, :order_date, :product_id, :ordergroup_id, :created_at, :updated_at
json.url order_url(order, format: :json)

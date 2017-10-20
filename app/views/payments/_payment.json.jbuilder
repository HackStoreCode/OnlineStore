json.extract! payment, :id, :payment_date, :description, :total_amount, :ordergroup_id, :created_at, :updated_at
json.url payment_url(payment, format: :json)

json.extract! product, :id, :name, :stock, :price, :user_id, :created_at, :updated_at
json.url product_url(product, format: :json)

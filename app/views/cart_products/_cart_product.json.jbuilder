json.extract! cart_product, :id, :qty, :cart_id, :product_id, :created_at, :updated_at
json.url cart_product_url(cart_product, format: :json)

json.extract! detail, :id, :receipt_id, :product_id, :cantidad_producto, :precio, :created_at, :updated_at
json.url detail_url(detail, format: :json)
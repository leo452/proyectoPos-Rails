json.extract! product, :id, :category_id, :nombre, :cantidad, :valor_unitario, :valorC_total, :articulo, :created_at, :updated_at
json.url product_url(product, format: :json)
json.extract! product, :id, :name, :date_of_purchase, :price, :date_of_disuse, :created_at, :updated_at
json.url product_url(product, format: :json)

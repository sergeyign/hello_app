json.extract! shoplist, :id, :content, :price, :created_at, :updated_at
json.url shoplist_url(shoplist, format: :json)

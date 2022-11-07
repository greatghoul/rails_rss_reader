json.extract! item, :id, :title, :description, :content, :link, :published_at, :read_at, :channel_id, :created_at, :updated_at
json.url item_url(item, format: :json)

json.extract! channel, :id, :title, :description, :link, :xml_link, :fetched_at, :category_id, :created_at, :updated_at
json.url channel_url(channel, format: :json)

json.extract! card, :id, :title, :content, :mood, :created_at, :updated_at
json.url card_url(card, format: :json)

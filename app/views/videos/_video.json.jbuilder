json.extract! video, :id, :name, :url, :created_at, :updated_at
json.url video_url(video, format: :json)

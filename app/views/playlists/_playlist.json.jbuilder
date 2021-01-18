json.extract! playlist, :id, :name, :attachment, :song_id, :user_name, :created_at, :updated_at
json.url playlist_url(playlist, format: :json)

json.array!(@pins) do |pin|
  json.extract! pin, :id, :name, :image, :about, :user_id, :board_id
  json.url pin_url(pin, format: :json)
end

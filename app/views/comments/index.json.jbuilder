json.array!(@comments) do |comment|
  json.extract! comment, :id, :content, :advert_id, :name
  json.url comment_url(comment, format: :json)
end

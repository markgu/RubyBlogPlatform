json.array!(@comments) do |comment|
  json.extract! comment, :writer, :text
  json.url comment_url(comment, format: :json)
end

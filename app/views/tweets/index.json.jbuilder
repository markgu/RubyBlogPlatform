json.array!(@tweets) do |tweet|
  json.extract! tweet, :subject, :user_id, :contents
  json.url tweet_url(tweet, format: :json)
end

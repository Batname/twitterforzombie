json.array!(@tweets) do |tweet|
  json.extract! tweet, :id, :massage
  json.url tweet_url(tweet, format: :json)
end

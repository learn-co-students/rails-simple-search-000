json.array!(@words) do |word|
  json.extract! word, :id, :keyword
  json.url word_url(word, format: :json)
end

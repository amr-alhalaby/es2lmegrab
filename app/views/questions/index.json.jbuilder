json.array!(@questions) do |question|
  json.extract! question, :id, :header, :body
  json.url question_url(question, format: :json)
end

json.array!(@user_question_rates) do |user_question_rate|
  json.extract! user_question_rate, :id
  json.url user_question_rate_url(user_question_rate, format: :json)
end

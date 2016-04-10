json.array!(@user_replay_rates) do |user_replay_rate|
  json.extract! user_replay_rate, :id
  json.url user_replay_rate_url(user_replay_rate, format: :json)
end

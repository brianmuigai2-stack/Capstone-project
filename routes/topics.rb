# Topic routes
require_relative '../data/topics'

get '/topics' do
  json_response(TOPICS)
end

get '/topics/:id' do
  topic = TOPICS.find { |t| t[:id] == params[:id].to_i }

  if topic
    json_response(topic)
  else
    json_response({ error: "Topic not found" }, 404)
  end
end

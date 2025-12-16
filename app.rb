# Ruby Beginner Toolkit API - Main application file

require 'sinatra'
require 'json'

require_relative './helpers/response_helper'
require_relative './routes/topics'

helpers ResponseHelper

# API endpoints
get '/' do
  json_response({ message: "Welcome to the Ruby Beginner Toolkit API" })
end

get '/hello' do
  json_response({ message: "Hello World from Ruby!" })
end

get '/health' do
  json_response({ status: "OK", time: Time.now })
end

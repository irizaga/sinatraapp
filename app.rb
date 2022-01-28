# frozen_string_literal: true

require 'erb'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :personal
end

get '/personal' do
  erb :personal
end

get '/pullrequests' do
  erb :pull_requests
end

get '/academic' do
  erb :academic
end

# frozen_string_literal: true

require_relative '../app'
require 'sinatra/base'
require 'rack/test'

RSpec.configure do |conf|
  conf.include Rack::Test::Methods
end

describe 'App' do
  let(:app) { Sinatra::Application }

  context 'request / ' do
    let(:response) { get '/' }
    it 'returns 200' do
      expect(response.status).to eq 200
    end
  end

  context 'request /personal ' do
    let(:response) { get '/personal' }
    it 'returns 200' do
      expect(response.status).to eq 200
    end
  end

  context 'request /pull_requests ' do
    let(:response) { get '/pullrequests' }
    it 'returns 200' do
      expect(response.status).to eq 200
    end
  end

  context 'request /academic ' do
    let(:response) { get '/academic' }
    it 'returns 200' do
      expect(response.status).to eq 200
    end
  end
end

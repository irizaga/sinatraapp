# frozen_string_literal: true

require_relative '../app'
require 'sinatra/base'
require 'rack/test'
require_relative 'spec_helper'

RSpec.configure do |conf|
  conf.include Rack::Test::Methods
end

describe 'App' do
  let(:app) { Sinatra::Application }

  describe 'request / ' do
    let(:response) { get '/' }
    it 'returns 200' do
      expect(response.status).to eq 200
    end
  end

  describe 'request /personal ' do
    let(:response) { get '/personal' }
    it 'returns 200' do
      expect(response.status).to eq 200
    end
  end

  describe 'request /pull_requests ' do
    let(:response) { get '/pullrequests' }
    it 'returns 200' do
      expect(response.status).to eq 200
    end
  end

  describe 'request /academic ' do
    let(:response) { get '/academic' }
    it 'returns 200' do
      expect(response.status).to eq 200
    end
  end

  describe 'request /invalid ' do
    let(:response) { get '/invalid' }
    it 'returns 404' do
      expect(response.status).to eq 404
    end
  end
end

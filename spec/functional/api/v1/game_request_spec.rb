require 'rails_helper'

RSpec.describe 'Game endpoint', type: :request do
  describe 'GET /api/v1/game' do
    it 'returns a success response' do
      get '/api/v1/game'
      expect(response).to have_http_status(:success)
    end

    it 'returns a JSON containing a "board" key' do
      get '/api/v1/game'

      json_response = JSON.parse(response.body)

      expect(json_response.keys).to eq(['board'])
    end

    it 'returns a JSON containing an array as the value' do
      get '/api/v1/game'

      json_response = JSON.parse(response.body)

      expect(json_response['board']).to eq(['','','','','','','','',''])
    end
  end
end

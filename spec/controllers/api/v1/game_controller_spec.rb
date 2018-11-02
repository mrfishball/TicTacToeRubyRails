require 'rails_helper'

RSpec.describe Api::V1::GameController, type: :controller do
  describe 'GET #index' do
    it 'returns a success response' do
      get :index
      expect(response).to have_http_status(:success)
    end

    it 'renders a JSON containing a "board" key' do
      get :index

      json_response = JSON.parse(response.body)

      expect(json_response.keys).to eq(['board'])
    end

    it 'renders a JSON containing an array as the value' do
      get :index

      json_response = JSON.parse(response.body)

      expect(json_response['board']).to eq(['','','','','','','','',''])
    end
  end
end

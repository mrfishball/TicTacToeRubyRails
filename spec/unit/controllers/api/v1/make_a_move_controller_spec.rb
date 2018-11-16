require 'rails_helper'

RSpec.describe Api::V1::MakeAMoveController, type: :controller do
  describe 'POST #make_a_move' do

    context 'with the valid parameter' do

      it 'returns a success response' do
        post :make_a_move, params: { board: [1,2,3] }

        expect(response).to have_http_status(:success)
      end

      it 'renders a JSON containing two keys' do
        post :make_a_move, params: { board: [1,2,3] }

        json_response = JSON.parse(response.body)

        expect(json_response.length).to eq(2)
      end

      it 'renders a JSON containing a "move" and a "board" key' do
        post :make_a_move, params: { board: [1,2,3] }

        json_response = JSON.parse(response.body)

        expect(json_response.keys).to eq(['move', 'board'])
      end

      it 'renders a JSON containing an string for the key "move"' do
        post :make_a_move, params: { board: [1,2,3] }

        json_response = JSON.parse(response.body)

        expect(json_response['move'].is_a? String).to be true
      end

      it 'renders a JSON containing an array for the key "board"' do
        post :make_a_move, params: { board: [1,2,3] }

        json_response = JSON.parse(response.body)

        expect(json_response['board'].is_a? Array).to be true
      end
    end

    context 'with invalid parameters' do
      it 'returns a 204 No content response' do
        post :make_a_move, params: { greating: 'hello' }

        expect(response).to have_http_status(:no_content)
      end

      it 'returns a response with an empty body' do
        post :make_a_move, params: { greating: 'hello' }

        expect(response.body.empty?).to be true
      end
    end
  end
end

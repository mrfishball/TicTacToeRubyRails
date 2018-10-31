require 'rails_helper'

RSpec.describe Api::V1::GameController, type: :routing do
  describe 'routing to the game endpoint /v1/game' do
    it 'routes to #index' do
      expect(:get => '/v1/game').to route_to('api/v1/game#index')
    end
  end
end

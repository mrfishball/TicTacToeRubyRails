module Api
  module V1
    class GameController < ApplicationController
      def index
        render json: {'board': ['','','','','','','','','']}
      end
    end
  end
end

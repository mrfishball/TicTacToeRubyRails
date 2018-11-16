Rails.application.routes.draw do
  namespace :api, :defaults => { :format => :json }do
    namespace :v1 do
      resources :game, only: [ :index ]
      match 'make_a_move', to: 'make_a_move#make_a_move', via: [:post]
    end
  end
end

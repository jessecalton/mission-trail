Rails.application.routes.draw do
  resources :games
  resources :instagram, only: [:index, :show, :update]
  resources :tinder, only: [:index, :show, :update]
  resources :local, only: [:index, :show, :update]
  resources :attr_changes
  resources :googlemaps, only: [:index, :show, :update]
  resources :scoreboard, only: [:index, :new, :create]

  resources :events do
  resources :results

  end

  root to: 'welcome#index'

  resources :welcome, only: [:index, :show]
    get '/welcome/fomo_details', to: 'welcome#show'
    resources :game_end, only: [:index]
end

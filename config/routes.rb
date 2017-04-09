Rails.application.routes.draw do
  resources :games
  resources :instagram, only: [:index, :show, :update]
  resources :attr_changes

  resources :events do
    resources :results
  end

  root to: 'welcome#index'

  resources :welcome, only: [:index, :show]
    get '/welcome/fomo_details', to: 'welcome#show'


end

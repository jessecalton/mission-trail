Rails.application.routes.draw do
  resources :games

  root to: 'welcome#index'

  resources :welcome
    get '/welcome/fomo_details', to: 'welcome#show'
end

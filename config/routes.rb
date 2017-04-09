Rails.application.routes.draw do
  resources :games

  root to: 'welcome#index'

  get '/welcome/fomo_details', to: 'welcome#fomo_details', as: 'fomo_details'
end

Rails.application.routes.draw do
  resources :games
  resources :events do
    resources :results
  end

  root to: 'welcome#index'

  resources :welcome
    get '/welcome/fomo_details', to: 'welcome#show'
end

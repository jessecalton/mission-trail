Rails.application.routes.draw do
  resources :games
  resources :events do
    resources :results
  end

  root to: 'games#index'
end

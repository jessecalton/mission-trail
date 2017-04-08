Rails.application.routes.draw do
  resources :games

  root to: 'welcome#index'

end

Rails.application.routes.draw do

  namespace :api, defaults: { format: :json } do
    resources :events, only: [:create]
  end

  resources :registered_applications do
    resources :events
  end

  devise_for :users
  match '/api/events', to: 'api/events#preflight', via: [:options]

  root 'welcome#index'

end

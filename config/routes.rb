Rails.application.routes.draw do
  
  namespace :api, defaults: { format: :json } do
    resources :events, only: [:create]
  end

  resources :registered_applications do
    resources :events
  end

  devise_for :users

  root 'welcome#index'

end

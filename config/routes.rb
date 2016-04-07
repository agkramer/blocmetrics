Rails.application.routes.draw do

  resources :registered_applications do
    resources :events
  end

  devise_for :users

  root 'welcome#index'

end

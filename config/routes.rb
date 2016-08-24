Rails.application.routes.draw do

  devise_for :users

  root to: 'books#index'

    get 'garages/show'

  resources :books do
    resources :checkups
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

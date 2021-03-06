Rails.application.routes.draw do

  devise_for :users, controllers: {registrations: 'registrations'}

  root to: 'pages#home'

    resources :garages

  resources :books do
    resources :checkups
  end

  get 'checkups/items', to: 'checkups#items', as: :checkup_items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :powers, only: [:index, :show, :update]
  resources :heroes, only: [:index, :show]
  resources :hero_powers, only: [:index, :create]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

# resources :heros, only: [:index, :show]

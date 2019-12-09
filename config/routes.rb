Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :specialties, only: [:index, :show] do

    member do
      get 'like', to: "specialties#like"
    end

    collection do
      get 'favorites', to: "specialties#favorites"
    end

    get "/restaurants", to: "restaurants#index"

  end

  resources :restaurants, only: [:show]

  get '/tagged', to: "restaurants#tagged", as: :tagged


end

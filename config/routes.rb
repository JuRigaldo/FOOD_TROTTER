Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :specialties, only: [:index, :show] do

        member do
          get 'like', to: "specialties#like"
          get 'game'
        end


    get "/restaurants", to: "restaurants#index"

  end

  resources :restaurants, only: [:show]

  get '/tagged', to: "restaurants#tagged", as: :tagged


end

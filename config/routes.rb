Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :specialties, only: [:index, :show] do




    collection do
      get 'favorites', to: "specialties#favorites"
    end

        member do
          get 'like', to: "specialties#like"
        end



    get "/restaurants", to: "restaurants#index"

  end

  resources :restaurants, only: [:show] do
    member do
      get 'like', to: "restaurants#like"
    end
  end

  get '/tagged', to: "restaurants#tagged", as: :tagged

  resources :games, only: [:index]

end

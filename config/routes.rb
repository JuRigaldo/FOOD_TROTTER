Rails.application.routes.draw do
  devise_for :users
  root to: 'specialties#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :specialties, only: [:index, :show] do
    resources :restaurants, only: [:index, :show]
  end
end

Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :dogs do
    resources :bookings, only: [ :new, :create ]
    resources :reviews, only: [ :new, :create ]
    resources :favourites, only: [ :new, :create ]
    end
  resources :bookings, only: [ :index, :show, :destroy ]
  resources :reviews, only: [ :destroy ]
  resources :users, only: [ :show, :destroy ] do
    member do
      get "dogs"
    end
  end
  resources :favourites, only: [ :destroy, :index ]
end

Rails.application.routes.draw do
  # resources :portfolio_stocks
  # resources :stocks
  # resources :portfolios
  # resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'portfolios#index'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  # get '/home', to: 'application#home'

  resources :users
  resources :stocks
  resources :portfolios
  resources :portfolio_stocks

  get '/wishlist', to: 'stocks#index'


end

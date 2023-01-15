Rails.application.routes.draw do
  get '/show/:id', to: 'books#show'
  get '/index', to: 'home#index'
  root to: 'home#index'
end
Rails.application.routes.draw do
  root to: 'users#search'
  get '/users/search', to: 'users#search'
  get 'users/new', to: 'users#new'
  post 'users/create', to: 'users#create'
  delete '/users/:id', to: 'users#destroy'
end

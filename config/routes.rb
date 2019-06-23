Rails.application.routes.draw do
  root to: 'users#search'
  get '/users/search', to: 'users#search'
  get 'users/new', to: 'users#new'
  post 'users/create', to: 'users#create'
  get '/users/:id/edit', to: 'users#edit'
  patch '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#destroy'
end

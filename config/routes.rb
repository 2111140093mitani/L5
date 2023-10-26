Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'users/index', to: 'users#index'
  root 'users#index'
  get 'users/new', to: 'users#new'
  post 'users', to: 'users#create'
  delete 'users/:id', to: 'users#destroy'
  # Defines the root path route ("/")
  # root "articles#index"
end

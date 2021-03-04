Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'pages#home'
  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'
  get '/education', to: 'pages#education'
  get '/online' , to: 'pages#online'
#   post 'pages/education' , to: 'pages#education'
  get '/users', to: 'users#list_users'
  get '/users/new_user'
  get 'queries/show'
  post 'users/create_user'
  post 'queries/after_create'
  get 'user/admin/Jafar', to:"users#admin"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

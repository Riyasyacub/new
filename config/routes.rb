Rails.application.routes.draw do
  root 'pages#home'
  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'
  get '/education', to: 'pages#education'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

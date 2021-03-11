Rails.application.routes.draw do

  namespace :admin do

  get 'dashboard/main'
  get 'dashboard/user'
  get 'dashboard/blog'
end

  resources :portfolios, except: [:show]
  get 'angular-items', to: 'portfolios#angular'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  get 'about_me', to: 'pages#about'
  get 'mycontact', to: 'pages#contact'

  resources :blogs do
  	member do
  		get :toggle_status
  	end
  end

  resources :posts

  #globbing
  get 'posts/*missing', to: 'posts#missing'

  #dynamic route
  get 'query/:else/:another', to: 'pages#something'
  get 'query/:else', to: 'pages#something'


  root to: 'pages#home'
  
end

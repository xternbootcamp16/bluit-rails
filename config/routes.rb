Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources :categories
  
  root 'posts#index'
end

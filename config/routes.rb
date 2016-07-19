Rails.application.routes.draw do
  resources :posts
  resources :categories
  
  root 'posts#index'
end

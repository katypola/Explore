Rails.application.routes.draw do

  resources :comments
  resources :posts
  resources :kits
  resources :steps
  resources :experiments
  resources :fields
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static#home'
  get '/apod/main' => 'apod#main'
  get '/article/index' => 'article#index'
  get '/search' => 'search#index'
end

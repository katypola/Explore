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
  get '/articles' => 'article#index'
  get '/search' => 'search#index'
  get '/experiments/:id(/:pg)' => 'experiments#show', as: :exper
  post '/article/add' => 'article#add', as: :article_add
  post '/article/:id/remove' => 'article#remove', as: :article_remove
  get '/:username(/:page)' => 'static#profile', as: :profile
end

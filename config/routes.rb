Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  resources :libraries
  resources :comments
  resources :posts
  
  root 'posts#index'
  
  get 'posts' => "post#show"
  get "/auth/:provider/callback" => "sessions#create"
  get "/signout" => "sessions#destroy", :as => :signout
  get "login" => "sessions#index"
  get "library" => "libraries#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

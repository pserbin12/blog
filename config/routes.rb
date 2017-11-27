Rails.application.routes.draw do
  resources :homes
  resources :projects
  resources :jokes
  resources :currencies
  devise_for :admins
  resources :posts
  get "/posts/:id", to: "posts#show", as: :show_post
  mount Ckeditor::Engine => '/ckeditor'
  root to: "homes#index"


end

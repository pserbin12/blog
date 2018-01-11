Rails.application.routes.draw do
  resources :projects
  resources :jokes
  resources :currencies
  devise_for :admins
  resources :posts
  resources :homes
  get "/posts/:id", to: "posts#show", as: :show_post
  get "/admins/:id", to: "admin#show", as: :admin_login
  mount Ckeditor::Engine => '/ckeditor'

  root to: "homes#index"


end

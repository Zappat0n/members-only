Rails.application.routes.draw do
  devise_for :users, except: :create, path: '', path_names: { sign_in: 'login', sign_out: 'signed-out' }
  resources :posts, only: [:new, :create, :index]
  root to: 'posts#index'

  # get 'posts/:id', to: 'posts#show'
  # get 'posts/new', to: 'posts#new'
  # get 'posts/index'
  # get 'posts', to: 'posts#new'
  # devise_for :users

  # root 'posts#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

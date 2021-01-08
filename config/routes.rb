Rails.application.routes.draw do
  get 'posts/new', to: 'posts#new'
  get 'posts/index'
  get 'posts', to: 'posts#new'
  devise_for :users

  root 'posts#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

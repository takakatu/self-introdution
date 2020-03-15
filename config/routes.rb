Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :posts, only: [:show, :index, :new, :create, :edit, :destroy]
  resources :users, only: [:index, :edit]
  resources :posts do
    patch :toggle_status
  end
  namespace :api, format: 'json' do
    get 'posts/preview'
  end
end

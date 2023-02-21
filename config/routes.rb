Rails.application.routes.draw do

  devise_for :users

  root to: 'pages#salut'

  resources :posts

  resources :salut
  resources :messages
  resources :pages do
    collection do
      get 'user_details'
      get 'salut'
    end
  end

  resources :users, only: [:index, :show] do
    member do
      post 'follow'
      delete 'unfollow'
    end
  end  



end
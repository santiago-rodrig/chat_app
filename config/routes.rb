Rails.application.routes.draw do
  root 'chat_room#index'
  get 'login', to: 'sessions#login'
  post 'login', to: 'sessions#create'
  delete 'login', to: 'sessions#destroy'
  get 'signup', to: 'users#new'
  resources :users, except: [:new, :index]
  resources :messages, only: :create
  mount ActionCable.server, at: '/cable'
end


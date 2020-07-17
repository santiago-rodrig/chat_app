Rails.application.routes.draw do
  root 'chat_room#index'
  get 'login', to: 'sessions#login'
  post 'login', to: 'sessions#create'
end


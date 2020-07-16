Rails.application.routes.draw do
  root 'chat_room#index'
  get 'sessions/login'
end


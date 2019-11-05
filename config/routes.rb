Rails.application.routes.draw do
  #get 'messages/create'
  root to: 'rooms#show'
  #resources :rooms
  resources :messages
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'messages', to: 'messages#message_index'
  get 'messages/new', to: 'messages#new_message'
  post 'messages', to: 'messages#create'
  resources :messages
end

Olark::Application.routes.draw do

  resources :chats
  root :to => "chats#create"
end
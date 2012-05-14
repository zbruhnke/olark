Olark::Application.routes.draw do

  resources :chats
  root :to => "chats#index"
end
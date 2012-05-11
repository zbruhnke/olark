Olark::Application.routes.draw do
  resources :tests

  root :to => "chat#create"
  match '/chats' => "chat#index"
end
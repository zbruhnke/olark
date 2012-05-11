Olark::Application.routes.draw do
  resources :tests

  root :to => "chat#index"
  match '/chats' => "chat#index"
end
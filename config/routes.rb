Olark::Application.routes.draw do

  root :to => "chat#index"
  match '/chats' => "chat#create"
end
Olark::Application.routes.draw do
  root :to => "chat#create"
  match '/chats' => "chat#index"
end
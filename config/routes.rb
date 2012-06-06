Topsoil::Application.routes.draw do
  resources :users, :only => [:index]
end

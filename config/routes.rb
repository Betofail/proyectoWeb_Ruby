Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'signup', to: 'signup#getUsuario'
  post 'login', to: 'login#loginUsuario'
  post 'table', to: 'main#crearTabla'
end

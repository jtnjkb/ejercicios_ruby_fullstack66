Rails.application.routes.draw do
  root 'prueba#index'

  get 'prueba/index'
  get 'prueba/hola'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

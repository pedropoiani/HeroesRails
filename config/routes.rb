Rails.application.routes.draw do
  
  resources :personagens
  resources :poderes
  resource  :intro
  root to: 'intro#index'

end

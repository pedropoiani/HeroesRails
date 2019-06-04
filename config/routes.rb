Rails.application.routes.draw do
  
  resources :personagens
  resources :poderes
  resources :intros
  root to: 'personagens#index'

end

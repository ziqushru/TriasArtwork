Rails.application.routes.draw do
  root 'info#home'
  
  get 'info/bio'
  get 'info/contact_us'
  
  get 'gallery/show'
  get 'gallery/showAll'
  
  get 'services/show'

  get 'images/showAll'
  get 'images/show'
  get 'images/destroy'
  post 'images/destroy'
  resources :images

  devise_for :users
end
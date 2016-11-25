Rails.application.routes.draw do
  root 'info#home'
  
  get 'info/bio'
  get 'info/contact_us'
  
  get 'gallery/show'
  get 'gallery/showAll'
  
  get 'services/show'

  resources :posts
  devise_for :users
end
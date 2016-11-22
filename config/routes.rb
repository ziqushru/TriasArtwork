Rails.application.routes.draw do
  root 'info#home'
  
  get 'info/bio'
  get 'info/contact_us'
  
  get 'christening/gallery'
  get 'christening/show'
  get 'christening/services'

  get 'wedding/gallery'
  get 'wedding/show'
  get 'wedding/services'

  resources :posts
  devise_for :users
  resources :christenings
  resources :weddings
end
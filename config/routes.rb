Rails.application.routes.draw do
  root 'info#home'

  get 'info/contact_us'
  resources :posts
  devise_for :users
end
Rails.application.routes.draw do


  resources :words

  resources :searches

  root to: 'searches#new'
  #resources :words

end

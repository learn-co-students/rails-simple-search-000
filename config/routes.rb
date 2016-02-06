Rails.application.routes.draw do

  root to: 'welcome#home'

  resources :words

  resources :search, :only => [:index] 

end

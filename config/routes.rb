Rails.application.routes.draw do

  get "/", to: 'welcome#show'
  get "/words/index", to: 'words#index'
  get 'words/:id', to: 'words#show'
  get 'search/index', to: 'search#index'


end

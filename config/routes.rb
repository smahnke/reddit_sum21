Rails.application.routes.draw do
  #allows us to communicate through the browser to our app
  #rails command, http verbs, url, endpoint
  # resources - it will generate all needed routes for the main actions
    #resources :controller
  # root - onces, this will root page, starting page
    #root 'controller#action'
  # long ways, defining your own routes
    #http verb, url, endpoint, rails command
  # get 'people/new', to: 'people#index'
  # post
  root 'subs#index'

  resources :subs do
    resources :topics
  end

  resources :topics do
    resources :comments
  end

  # get 'sub/1'
  # get 'sub/2'
  # :id - a place holder for the id
  # :parent_id
  # embed, if there are any relational controllers we need to embed 
end

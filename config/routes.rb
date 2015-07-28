Rails.application.routes.draw do

  root 'homepage#index'

  resources :students
  resources :teachers

  get '/signup', to: 'session#signup'
  get '/login', to: 'session#login'

end

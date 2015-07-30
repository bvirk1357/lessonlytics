Rails.application.routes.draw do

  root 'homepage#index'

  resources :students

  resources :teachers do
    resources :courses
  end

  resources :courses do
    resources :videos
  end

  resources :videos do
    resources :questions
  end


  get '/signup', to: 'session#signup'
  get '/login', to: 'session#login'
  post '/login', to: 'session#create'

end

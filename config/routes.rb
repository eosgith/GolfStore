Rails.application.routes.draw do
  
  resources :items
  root 'static_pages#home'
  
  

  #get 'static_pages/help'
  get '/help', to: 'static_pages#help'

  #get 'static_pages/about'
  
  get '/about', to: 'static_pages#about'
  
  # by going to url /login then send it to user controller and method login
  # why not user_controller - rails knows that following the to: will be name of controller so can drop '_controller'
  # to:  - go get the following cotroller user and go to method in it called login
  get '/login',to:'user#login'

  # by going to url /login then send it to user controller and method login
  get '/logout',to:'user#logout'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


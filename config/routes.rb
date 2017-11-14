Rails.application.routes.draw do
  get 'users/index'

  get 'users/register'

  post '/index' => 'users#index'

  get '/login' => 'users#login'
  post '/login' => 'users#login'

  get '/home' => 'users#home'
  post '/home' => 'users#home'

  root 'users#register'

end

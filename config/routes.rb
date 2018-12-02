Rails.application.routes.draw do
  resources :serviceproviders
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'users#new'
  get '/signin'=>"users#signin",as:'sign_in'
  post '/signin'=>"users#usersignin",as:'user_sign_in'

end

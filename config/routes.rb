Rails.application.routes.draw do
  resources :users do  
    resources :serviceproviders
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'users#new'
  get '/signin'=>"users#signin",as:'sign_in'
  post '/signin'=>"users#usersignin",as:'user_sign_in'
  delete "/sign_out" => "application#sign_out", as: "sign_out"
  get "/auth/:provider/callback" => "sessions#create_from_omniauth"

end

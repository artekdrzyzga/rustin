Rails.application.routes.draw do
  get 'users/list'

  get 'users/new'

  get 'pages/index'
 
  
   resources :ads
  # root 'ads#index'
  resources :pages, :only => [:index]

  root to: 'ads#index'
  
  resources :user_sessions, :users, only: [:new, :create]
  delete '/sign_out', to: 'user_sessions#destroy', as: :sign_out
  get '/sign_in', to: 'user_sessions#new', as: :sign_in# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

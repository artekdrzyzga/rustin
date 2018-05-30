Rails.application.routes.draw do
  get 'user_transactions_elements/index'

  get 'user_transactions_elements/index'
  get 'user_transactions/index'


  resources :tranelems
  resources :tranheads
  
  
 
  get 'users/list'

  get 'users/new'

  #get 'pages/index'
 
 
  resources :tranheads, :only => [:index] do
    collection do
      post 'add_or_update_basket'
    end
  end 


  resources :user_transactions do
    member do
      get 'sent'
    end
    resources :user_transactions_elements
  end
  resources :user_transactions_elements


   resources :ads

   resources :admin_transactions do
    member do
      get 'sent'
    end
    resources :admin_transactions_elements
  end
  resources :admin_transactions_elements



  # root 'ads#index'
  resources :pages, :only => [:index]

  root to: 'ads#index'

  resources :user_sessions, :users, only: [:new, :create]
  delete '/sign_out', to: 'user_sessions#destroy', as: :sign_out
  get '/sign_in', to: 'user_sessions#new', as: :sign_in
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

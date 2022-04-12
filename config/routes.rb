Rails.application.routes.draw do
  #root "pages#new"

  #get "about", to: "pages#about"
  #resources :articles

  #get "signup", to: "users#new"
  #resources :users, except: [:new]

  #get "login", to: "sessions#new"
  #post "login", to: "sessions#create"
  #get "logout", to: "sessions#destroy"
  #delete "logout", to: "sessions#destroy"

  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'delete', to: 'articles#delete'
  resources :articles
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  # get 'logout', to: 'sessions#destroy'
  delete 'logout', to: 'sessions#destroy'
  #resources :categories, except: [:destroy]
end

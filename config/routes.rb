Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  #get 'pages/home', to: "pages#home"
  get 'about', to: "pages#about"
  get 'signup', to: "users#new"
  resources :users, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :articles #this will give you all the paths new, edit, update, delete, show, index article paths
  resources :categories, except: [:destroy]



end

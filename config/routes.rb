Rails.application.routes.draw do
  resources :hamburgers
  get 'users/sign_up' , to: 'users#new'
  post 'users', to: 'users#create'
  get 'users/sign_in', to: 'sessions#new'
  resources :sessions ,only:[:create,:destroy]
  root 'hamburgers#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

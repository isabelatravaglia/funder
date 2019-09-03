Rails.application.routes.draw do
  get 'favorites/index'
  get 'favorites/create'
  get 'scholarships/index'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :institutions
  resources :scholarships, only:[:index] do
    resources :favorites, only:[:index, :create]
  end
end

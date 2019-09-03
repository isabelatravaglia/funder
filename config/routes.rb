Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :institutions
  resources :scholarships, only:[:index] do
    resources :favorites, only:[:index, :create, :destroy]
  end
end

Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root to: 'pages#home'
  resources :users, only: [:index, :show, :edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :institutions
  resources :scholarships, only:[:index, :show] do
    resources :favorites, only:[:index, :create, :destroy]
  end
end

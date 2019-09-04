Rails.application.routes.draw do
  require "sidekiq/web"
  authenticate :user, lambda { |u| u.admin } do
    mount Sidekiq::Web => '/sidekiq'
  end
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root to: 'pages#home'
  resources :users, only: [:index, :show, :edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :institutions
  resources :scholarships, only:[:index] do
    resources :favorites, only:[:index, :create, :destroy]
  end
  resources :alerts, only:[:new, :create, :edit, :update, :destroy]
end

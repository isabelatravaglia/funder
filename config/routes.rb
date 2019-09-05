Rails.application.routes.draw do
  require "sidekiq/web"
  authenticate :user, lambda { |u| u.admin } do
    mount Sidekiq::Web => '/sidekiq'
  end
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root to: 'pages#home'
  patch '/alerts/:id', to: 'alerts#change_notification_status', as: 'change_notification_status'
  resources :users, only: [:index, :show, :edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :institutions
  resources :scholarships, only:[:index, :show]
  resources :favorite_scholarships, only: [:create, :destroy]
  resources :alerts, only:[:new, :create, :edit, :update, :destroy]
  resources :notifications, only:[:update]
end

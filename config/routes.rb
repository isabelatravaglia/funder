Rails.application.routes.draw do
  get 'institutions/index'
  get 'institutions/new'
  get 'institutions/create'
  get 'institutions/edit'
  get 'institutions/update'
  get 'institutions/show'
  get 'institutions/destroy'
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :institutions
end

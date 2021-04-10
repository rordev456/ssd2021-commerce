Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  resources :categories
  namespace :admins do
    resources :products
    namespace :products do
      post 'csv_upload'
    end
  end
  # get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

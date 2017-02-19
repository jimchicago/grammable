Rails.application.routes.draw do
  devise_for :users
  root 'grams#index'
  resources :grams do # Connects new, create, show, edit, update, destroy
    resources :comments, only: :create
  end
  resources :users, only: [:new, :create]
end

 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
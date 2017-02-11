Rails.application.routes.draw do
  devise_for :users
  root 'grams#index'
  resource :grams, only: [:new, :create]
  resource :users, only: [:new, :create]

end

 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
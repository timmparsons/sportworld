Rails.application.routes.draw do
  resources :pins
  devise_for :users

  get ':username' =>'users#show', as: 'user'

  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

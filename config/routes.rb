Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :wills do
    resources :accounts
    resources :funeral
    resources :insurance_policies
    resources :jewelries
    resources :motors
    resources :pensions
    resources :private_shares
    resources :properties
    resources :stock_porfolios
  end 

end

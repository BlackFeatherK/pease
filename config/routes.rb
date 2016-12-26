Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :welcome

  # namespace :api do
    # constraints do
      resources :wills do
        resources :accounts
        resources :funerals
        resources :insurance_policies
        resources :jewelries
        resources :motors
        resources :pensions
        resources :private_shares
        resources :properties
        resources :stock_portfolios
        resources :digital_assets
        collection do
          get :preview
          get :video
        end
      end 

      resources :users do
        get :slider

      end
      match '*unmatched_route', to: 'base#error_404', via: :all
    # end
  # end

  # resources :wills do
  #   resources :accounts
  #   resources :funerals
  #   resources :insurance_policies
  #   resources :jewelries
  #   resources :motors
  #   resources :pensions
  #   resources :private_shares
  #   resources :properties
  #   resources :stock_porfolios
  # end 

end

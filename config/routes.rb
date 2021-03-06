Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'users#show'
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
        resource :digital_asset
        resources :medicals
        resources :audios
        member do
          get :preview
          get :words
        end
      end 

      resources :users do
        member do 
          # get :slider
          get :lawyer
          get :suggestion
          get :question
          post :save_question
        end
      end

      # namespace :api do 
      #   resources :users
      # end
      # match '*unmatched_route', to: 'base#error_404', via: :all

end

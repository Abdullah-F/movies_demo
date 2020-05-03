Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  post 'authenticate', to: 'authentications#authenticate'
  resources :users, only: %i(new create)
  resources :movies, only: %i(index) do
    member do
      post :add_rating
    end
  end
end

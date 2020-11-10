Rails.application.routes.draw do
  get 'distance/index'
  get 'price/index'
  get 'price/update_price'
  mount_devise_token_auth_for 'User', at: 'api/v1/auth', skip:
  [:omniauth_callback]

  namespace :api do
    namespace :v1 do 
      resources :price, only: [:index, :update_price]
      resources :distance, only: [:index]
    end
  end
end

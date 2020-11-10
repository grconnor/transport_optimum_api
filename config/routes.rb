Rails.application.routes.draw do
  get 'prices/index'
  get 'distance/index'
  get 'price/index'
  get 'price/update_price'
  mount_devise_token_auth_for 'User', at: 'api/v1/auth', skip:
  [:omniauth_callback]

  namespace :api do
    namespace :v1 do 
      resources :prices, only: [:create]
    end
  end
end

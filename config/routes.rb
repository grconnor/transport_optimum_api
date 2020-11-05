Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'api/v0/auth', skip:
  [:omniauth_callback]

  namespace :api do
    namespace :v1 do   
    end
  end
end

Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'api/auth', skip: [:omniauth_callbacks]
  namespace :api do
    resources :assignments, only: %i[index create show]
    resources :users, only: :show
    resources :paypal, only: :create
  end
end

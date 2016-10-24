Rails.application.routes.draw do
  devise_for :users
  # mount_devise_token_auth_for 'User', at: 'auth'
 
  # devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  namespace :api, constratints: {format: :json} do
    resources :categories
    resources :ingredients
    resources :recipes
    
  end
  root to: "static#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

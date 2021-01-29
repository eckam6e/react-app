Rails.application.routes.draw do
  namespace :api do
    # devise_for :users
  
    resources :users
    resources :recipes do
      resources :comments, only: [:create, :destroy]
    end

  end
end

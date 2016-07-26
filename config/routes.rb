Rails.application.routes.draw do
  get 'home/index'

  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'
  
  devise_scope :user do
    authenticated :user do
      root "home#index", as: :authenticated_root
    end
    unauthenticated do
      root "home#index", as: :unauthenticated_root
    end
  end
  
  namespace :teacher do
      root :to => 'questions#index'
      resources :questions
      resources :examinations
  end
end

Rails.application.routes.draw do
  root 'coupons#index'
  resources :coupons
  resources :purchases, only: [:new, :create] do
    collection do
      post :confirm
      # post :confirm
      # get :finish
      get :finish
    end
  end
  resources :buys, only: [:new, :create, :show] do
  end
end

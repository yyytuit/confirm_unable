Rails.application.routes.draw do
  root 'coupons#index'
  resources :coupons
end

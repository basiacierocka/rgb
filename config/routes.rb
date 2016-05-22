Rails.application.routes.draw do
 root "application#index"
 resources :users do
  resources :cars, only: [:index]
 end
end

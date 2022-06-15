Rails.application.routes.draw do
  resources :line_items
  resources :carts
  resources :services
  devise_for :users, controllers: {
    registrations: "registrations"
  }
  root "services#index"
end

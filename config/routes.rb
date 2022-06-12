Rails.application.routes.draw do
  resources :services
  devise_for :users, controllers: {
    registrations: "registrations"
  }
  root "services#index"
end

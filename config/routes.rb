Rails.application.routes.draw do
  devise_for :users, only: :omniauth_callbacks, controllers: {omniauth_callbacks: 'omniauth'}
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do 
    resources :line_items
    resources :carts
    resources :services
    devise_for :users, skip: :omniauth_callbacks, controllers: {
      registrations: "registrations"
    }
    root "store#index"
    get 'purchase-credentials' => "purchase#index"
  end
end

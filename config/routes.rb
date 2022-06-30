Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do 
    resources :line_items
    resources :carts
    resources :services
    devise_for :users, controllers: {
      registrations: "registrations"
    }
    root "store#index"
    get 'purchase-credentials' => "purchase#index"
  end
end

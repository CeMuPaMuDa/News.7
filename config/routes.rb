Rails.application.routes.draw do
  scope '(:locale)', locale: /#{I18n.available_locales.join("|")}/ do
    resources :posts
    devise_for :users
    root "home#index"
  end
end

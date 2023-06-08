Rails.application.routes.draw do
  root "home#index"

  resources :songs

  get "format", to: "format#index"
  get "libraries", to: "libraries#index"
  get "tools", to: "tools#index"
end

Rails.application.routes.draw do
  root 'baskets#index'

  resources :basket
end

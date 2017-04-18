Rails.application.routes.draw do
  root 'basket#index'

  resources :basket
end

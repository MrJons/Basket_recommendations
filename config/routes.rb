Rails.application.routes.draw do
  root 'baskets#index'

  resource :basket
end

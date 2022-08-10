Rails.application.routes.draw do
  resources :restaurants do
    # /restaurants/...

    # /restaurants/:restaurant_id/...
    resources :reviews, only: [:new, :create]
  end
  # /reviews/...
  resources :reviews, only: :destroy
end

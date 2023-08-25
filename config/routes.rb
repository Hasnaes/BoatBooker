Rails.application.routes.draw do
  resources :boats do
    resources :bookings, only: [:create]
    get "my_dashboard", to: "bookings#my_dashboard"
  end

  root to: "pages#boats"
  devise_for :users
end

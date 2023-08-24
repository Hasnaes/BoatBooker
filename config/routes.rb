Rails.application.routes.draw do
  resources :boats do
    resources :bookings, only: [:create]
  end
  get "my_dashboard", to: "bookings#my_dashboard"

  root to: "pages#home"
  devise_for :users

  #  only: :index
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
end

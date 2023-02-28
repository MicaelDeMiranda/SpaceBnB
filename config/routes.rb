Rails.application.routes.draw do
  devise_for :users
  root to: "planets#index"
  resources :planets, except: :index do
    resources :bookings, only: :create
  end
  get 'dashboard', to: 'pages#dashboard', as: 'dashboard'

  resources :bookings, only: :destroy

  patch 'bookings/:id/accept', to: 'bookings#accept', as: 'accept'
  patch 'bookings/:id/decline', to: 'bookings#decline', as: 'decline'
end


# resources :planets, except: :index do
#   resources :bookings, only: %i[create destroy]
# end

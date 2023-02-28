Rails.application.routes.draw do
  devise_for :users
  root to: "planets#index"
  resources :planets, except: :index do
    resources :bookings, only: %i[create destroy]
  end
  get 'dashboard', to: 'pages#dashboard', as: 'dashboard'

end


# resources :planets, except: :index do
#   resources :bookings, only: %i[create destroy]
# end

# patch 'bookings/:id/accept', to: 'bookings#accept', as: 'accept'
# patch 'bookings/:id/decline', to: 'bookings#decline', as: 'decline'

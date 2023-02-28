Rails.application.routes.draw do
  devise_for :users
  root to: "planets#index"

  get 'dashboard', to: 'pages#dashboard', as: 'dashboard'
  get 'planets/:id/edit', to: 'planets#edit'
  patch 'planets/:id', to: 'planets#update'
  delete 'planets/:id', to: 'planets#destroy'

end


# resources :planets, except: :index do
#   resources :bookings, only: %i[create destroy]
# end

# patch 'bookings/:id/accept', to: 'bookings#accept', as: 'accept'
# patch 'bookings/:id/decline', to: 'bookings#decline', as: 'decline'
# # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

# Defines the root path route ("/")
# root "articles#index"

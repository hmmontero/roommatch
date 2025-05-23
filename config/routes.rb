Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :places do
    resources :bookings, only: %i[create]
  end


  resources :detail_compatibilities, only: %i[create show new edit update] do
    collection do
      patch :update_user_preferences
    end
  end

  resources :users, only: :show

  get 'profile', to: 'users#show_profile', as: :user_profile
  get 'profile/edit', to: 'users#edit_profile', as: :edit_user_profile
  patch 'profile', to: 'users#update_profile'


  patch "bookings/:id", to: "bookings#accept", as: :accept
  patch "bookings/:id", to: "bookings#decline", as: :decline

  resources :bookings, only: [:show] do
    resources :messages, only: [:create]
  end

  get 'my_places', to: 'places#my_places', as: :my_places

end

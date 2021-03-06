Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: 'registrations'}
  resources :events do
      resources :rsvps, only: [:create,:destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'events#index'
  resources :users, only: [:show]
end

Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: "registrations" }
  root to: 'pages#home'

  resources :users, only: [:edit, :update, :show]

  resources :consultations, only: [:index]

  resources :advisors, except: [:destroy] do
    resources :consultations, only: [:new, :create] do
      resources :reviews, only: [:new, :create]
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: "registrations" }
  root to: 'pages#home'

  resources :users, only: [:edit, :update, :show]



  resources :advisors, except: [:destroy] do
    resources :consultations, only: [:new, :create]
  end

  resources :consultations, only: [:index] do
    resources :reviews, only: [:new, :create]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

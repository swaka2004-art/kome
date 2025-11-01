Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  get 'perfumes/hinsyuitirann' => 'perfumes#hinsyuitirann'
  get 'perfumes/takikata' => 'perfumes#takikata'
  get 'tweets/new' => 'tweets#new'
  get 'tweets' => 'tweets#index'

  # Defines the root path route ("/")
  # root "posts#index"
  resources :perfumes
  resources :tweets
  root 'perfumes#top'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  


end



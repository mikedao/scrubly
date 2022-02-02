Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :washes, only: [:create]
    end
  end
  
  post '/text', only: [:create], to: "twilio#create"
  resources :washes, only: [:index]
end

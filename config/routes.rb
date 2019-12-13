Rails.application.routes.draw do
  root "properties#index"
  resources :properties, only: [:index, :show]

  get"/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy"

  resources :users do
    resources :properties do
      resources :books 
    end
  end
end

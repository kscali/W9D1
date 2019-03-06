Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show, :create, :destroy, :update]
  resources :artworks, only: [:show, :create, :destroy, :update]
  resources :artworkshares, only: [:create, :destroy]
  resources :comments, only: [:index, :create, :destroy]

  resources :users do 
    resources :artworks, only: [:index]
  end

  resources :artworks do
    member do 
      get 'fave'
    end
  end

  resources :users do
    member do 
      get 'fave'
    end
  end

  # GET
  # POST
  # PUT
  # DELETE

  # get "/users", to: "users#index", as: "user"
  # post "/users", to: "users#create"
  # put "/users", to: "users#update"
  # delete "/users/:id", to: "users#destroy"

  # get "/users/:id", to: "users#show"




end

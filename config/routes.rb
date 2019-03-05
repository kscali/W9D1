Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :show, :create, :destroy, :update]
  resources :artworks, only: [:index, :show, :create, :destroy, :update]
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

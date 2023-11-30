Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  post :hello, to: "hello#create"
  get :hello, to: "hello#index"

  root "hello#index"
end

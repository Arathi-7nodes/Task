Rails.application.routes.draw do
  root "users#form"
  get "/form" => "users#form"
  get "listing" => "users#listing"
  get "/details/:id" => "users#details", as: "details"
  resources :users

 end

Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "splash#index"

  get "/users", to: "users#index", as: "users"
  get "/users/:id", to: "users#show", as: "user"
end

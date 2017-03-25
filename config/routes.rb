Rails.application.routes.draw do
  # Why custom registrations? To handle additional user fields: http://jacopretorius.net/2014/03/adding-custom-fields-to-your-devise-user-model-in-rails-4.html
  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "splash#index"

  #user read routes
  get "/users", to: "users#index", as: "users"
  get "/users/:id", to: "users#show", as: "user"

  #activites routes
  get "/activities", to: "activities#index"
  get "actiivities/:id", to: "activities#show", as: "activity_show"


end

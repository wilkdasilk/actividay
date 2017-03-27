Rails.application.routes.draw do

  #posts routes
  resources :posts, except: [:new]

  #challenges routes with an extra patch/put for posting.
  resources :challenges, except: [:new, :index, :edit] do
    member do
      patch :not_interested
      put :not_interested
    end
  end

  get "/challenges/:id/new", to: "challenges#build_post", as: "new_post"

  # Why custom registrations? To handle additional user fields: http://jacopretorius.net/2014/03/adding-custom-fields-to-your-devise-user-model-in-rails-4.html
  devise_for :users, :controllers => { registrations: 'registrations', sessions: 'sessions' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "users#profile"

  get "/welcome", to: "splash#index", as: "splash"

  #user read routes
  get "/users", to: "users#index", as: "users"
  get "/users/:id", to: "users#show", as: "user"

  #activites routes
  get "/activities", to: "activities#index"
  get "/activities/:id", to: "activities#show", as: "activity_show"

  #catch-all
  match "*a", to: 'splash#index', via: :all

end

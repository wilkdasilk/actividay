Rails.application.routes.draw do

  root to: "users#profile"

  #welcome page
  get "/welcome", to: "splash#index", as: "splash"

  #posts routes
  get "/posts/new", to: "posts#new", as: "new_post"
  resources :posts, except: [:new]

  #challenges routes with an extra patch/put for posting.
  resources :challenges, except: [:new, :index, :edit] do
    member do
      patch :not_interested
      put :not_interested
    end
  end

  # User routes
  # Why custom registrations? To handle additional user fields: http://jacopretorius.net/2014/03/adding-custom-fields-to-your-devise-user-model-in-rails-4.html
  devise_for :users, :controllers => { registrations: 'registrations', sessions: 'sessions' }
  get "/users/:id", to: "users#show", as: "user"

  #activites routes
  get "/activities", to: "activities#index"
  get "/activities/:id", to: "activities#show", as: "activity_show"

  #catch-all
  match "*a", to: 'users#profile', via: :all

end

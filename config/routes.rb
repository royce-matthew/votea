Rails.application.routes.draw do

  devise_for :users
  #devise_for :users

  root to: "pages#index"

get "/profile", to: "users/profile#index"
get "/voting/new/:id", to: "voting/votes#new"

  namespace :admin do
    resources :candidates
    resources :positions
  end

  namespace :voting do

    resources :votes
  end
end

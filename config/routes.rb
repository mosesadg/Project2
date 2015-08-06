Rails.application.routes.draw do


  devise_for :users
  # get "videos" => "videos#index"
  #
  # get "videos/new" => "videos#new"
  #
  # post "videos" => "videos#create"
  #
  # get "videos/:id" => "videos#show"
  #
  # get "videos/:id/edit" => "videos#edit"
  # put "videos/:id" => "videos#update"
  # delete "videos/:id" => "videos#destroy"
  #
  #
  # get "comments" => "comments#index"
  # get "comments/new" => "comments#new"
  # post "comments" => "comments#create"
  # get "comments/:id" => "comments#show"
  # get "comments/:id/edit" => "comments#edit"
  # put "comments/:id" => "comments#update"
  # delete "comments/:id" => "comments#destroy"

  root to: 'videos#index'
    get '/comments', to: 'comments#index'

    resources :videos do
      resources :comments
      member do
        put "like", to: "videos#upvote"
    end
      # resources :genres
    end
end

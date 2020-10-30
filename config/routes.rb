Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    post "/sessions" => "sessions#create"

    get "/users" => "users#index"
    post "/users" => "users#create"
    get "/users/:id" => "users#show"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

    get "/beers" => "beers#index"
    post "/beers" => "beers#create"
    get "/beers/:id" => "beers#show"
    patch "/beers/:id" => "beers#update"
    delete "/beers/:id" => "beers#destroy"

    get "/tasting_notes" => "tasting_notes#index"
  
    get "/votes" => "votes#index"
    post "/votes" => "votes#create"
    patch "/votes/:id" => "votes#update"

    get "/user_tasting_notes" => "user_tasting_notes#index"
    post "/user_tasting_notes" => "user_tasting_notes#create"

  end
end

Rails.application.routes.draw do
  root "home#index"
  get "/about" => "about#about"
  get "/gifs" => "gifs#new"
  post "/gifs" => "gifs#create"
end

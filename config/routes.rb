Rails.application.routes.draw do
  resources :lessons
  resources :artists
  resources :students

  post "/login", to: "auth#login"
  get "/persist", to: "auth#persist"
  get"/artist_persist", to:"auth#artist_persist"
end

Rails.application.routes.draw do
  resources :artists
  resources :students

  post "/login", to: "auth#login"
  get "/persist", to: "auth#persist"
end

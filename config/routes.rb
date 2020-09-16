Rails.application.routes.draw do
  resources :students

  post "/login", to: "auth#login"
  get "/auth", to: "auth#persist"
end

RitlyApp::Application.routes.draw do
  root to: "ritlies#index"
  post "/go", to: "ritlies#create"

  get "/go/:random_str/preview", to: "ritlies#show"

  patch "/go/:random_str", to: "ritlies#redirect"

  get "/go", to: "ritlies#all"

  delete "/go/:random_str", to: "ritlies#destroy"

  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  get "/user/:id", to: "users#show"

  get "/signin", to: "sessions#new"
  post "/signin", to: "sessions#create"

end

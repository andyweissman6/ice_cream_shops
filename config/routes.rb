Rails.application.routes.draw do
# 5 VERBS = get, post, patch/put, delete

  get "/ice_cream_shops/new", to: "ice_cream_shops#new"
  post "/ice_cream_shops/new", to: "ice_cream_shops#create"
  get "/ice_cream_shops", to: "ice_cream_shops#index"
  get "/ice_cream_shops/:id", to: "ice_cream_shops#show"
  get "/flavors", to: "flavors#index"
  get "/flavors/:id", to: "flavors#show"
  get "/ice_cream_shops/:id/flavors", to: "ice_cream_shops/flavors#index"
  get "/", to: "flavors#index"

end

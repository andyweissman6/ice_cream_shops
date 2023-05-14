Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # 5 VERBS = get, post, patch/put, delete
  # Defines the root path route ("/")
  # root "articles#index"
  get "/ice_cream_shops", to: "ice_cream_shops#index"
  get "/ice_cream_shops/:id", to: "ice_cream_shops#show"
  get "/flavors", to: "flavors#index"
  get "/flavors/:id", to: "flavors#show"
  get "/ice_cream_shops/:id/flavors", to: "ice_cream_shops/flavors#index"
  # can also write it like:
  # "/ice_cream_shops/:ice_cream_shop_id/flavors", to: "ice_cream_shops/flavors#index"
  # in pry --> params: will see :ice_cream_shop_id = number

end

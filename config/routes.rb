Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # 5 VERBS = get, post, patch/put, delete
  # Defines the root path route ("/")
  # root "articles#index"
  get "/ice_cream_shops", to: "ice_cream_shops#index"
end

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/all" => "products#all_products"
  # get "/first" => "products#first_product"
  get "/products/:id" => "products#single_product"
end

Rails.application.routes.draw do
  resources :publications
  resources :genres
  resources :authors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  patch "authors", to: "authors#update" 

  get "/publications", to: "publications#index"
  get "/author", to: "author#index"
  get "/genres", to: "genres#index"


  post "/publications", to: "publications#create"
  patch "/publications", to: "publications#update"
  delete "/publications", to: "publications#destroy"

  post "/authors", to: "authors#create"
  patch "/authors/:id", to: "authors#update"
  delete "/authors", to: "authors#destroy"

end

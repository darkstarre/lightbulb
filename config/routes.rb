Rails.application.routes.draw do
  get "/", to: "ideas#index", as: "ideas"
  post "/", to: "ideas#create"

  get "/ideas/new", to: "ideas#new", as: "new_idea"

  get "/ideas/:id", to: "ideas#show", as: "idea"
  patch "ideas/:id", to: "ideas#update", as: "update_idea"
  delete "ideas/:id", to: "ideas#destroy", as: "destroy_idea"

  get "ideas/edit/:id", to: "ideas#edit", as: "edit_idea"
end



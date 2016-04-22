Rails.application.routes.draw do
  get "/", to: "ideas#index", as: "ideas"
  get "/ideas/new", to: "ideas#new", as: "new_idea"
  post "/", to: "ideas#create"
  get "/ideas/:id", to: "ideas#show", as: "idea"
  get "ideas/edit/:id", to: "ideas#edit", as: "edit_idea"
  patch "ideas/:id", to: "ideas#update", as: "update_idea"
  delete "ideas/:id", to: "ideas#destroy", as: "destroy_idea"

  
end



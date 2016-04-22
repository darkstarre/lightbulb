Rails.application.routes.draw do
   root "ideas#index"
   get "/ideas", to: "ideas#index", as:"ideas"
   get "/ideas/new", to: "ideas#new", as: "new_idea"
   post "/ideas", to: "ideas#create"
   get "/ideas/:id", to: "ideas#show", as: "idea"
end

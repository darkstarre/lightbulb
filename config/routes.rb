Rails.application.routes.draw do
   root "ideas#index"
<<<<<<< HEAD
   get "/ideas", to: "ideas#index", as:"ideas"
   get "/ideas/new", to: "ideas#new", as: "new_idea"
   post "/ideas", to: "ideas#create"
   get "/ideas/:id", to: "ideas#show", as: "idea"
=======
   get "ideas/new", to: "ideas#new", as: "new_idea"
   get "ideas/edit/:id", to: "ideas#edit", as: "edit_idea"
   patch "ideas/:id", to: "ideas#update", as: "update_idea"
   delete "ideas/:id", to: "ideas#destroy", as: "destroy_idea"
>>>>>>> 1011a71eb44b3d7c03f822bf1aff031e796105a1
end



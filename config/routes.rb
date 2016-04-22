Rails.application.routes.draw do
   root "ideas#index"
   get "ideas/new", to: "ideas#new", as: "new_idea"
   get "ideas/edit/:id", to: "ideas#edit", as: "edit_idea"
   patch "ideas/:id", to: "ideas#update", as: "update_idea"
   delete "ideas/:id", to: "ideas#destroy", as: "destroy_idea"
end



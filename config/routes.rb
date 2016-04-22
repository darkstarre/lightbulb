Rails.application.routes.draw do
   root "ideas#index"
   get "ideas/new", to: "ideas#new", as: "new_idea"
end

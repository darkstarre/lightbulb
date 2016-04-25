Rails.application.routes.draw do
  get "/", to: "ideas#index", as: "ideas"
  post "/", to: "ideas#create"

  get "/ideas/new", to: "ideas#new", as: "new_idea"

  get "/ideas/:id", to: "ideas#show", as: "idea"
  patch "ideas/:id", to: "ideas#update", as: "update_idea"
  delete "ideas/:id", to: "ideas#destroy", as: "destroy_idea"

  get "ideas/:id/edit", to: "ideas#edit", as: "edit_idea"

  post "/ideas/:idea_id/comments", to: "comments#create", as: "create_comment"
  match "/ideas/:idea_id/comments/:id", to: "comments#destroy", as: "delete_comment", via: [:get, :delete]
  get '/auth/twitter', as: 'sign_in'
  get '/auth/:provider/callback', to: 'session#create'
  delete '/session', to: 'session#destroy', as: 'sign_out'
end


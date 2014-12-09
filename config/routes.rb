PublicTransport::Application.routes.draw do

  get "roles/create"

  get "roles/new"

  get "roles/show"

  get "roles/index"

  get "roles/destroy"

  resources :employees

end

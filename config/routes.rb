Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'
  resources :cocktails, only: [:new, :create, :index, :show] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]

end

#no link to model

#when you create a member inside a resource, you can create whatever name you want and route you want and it will be created
#for only instance, it restaurants/140/chef, it is not link to the model, even if no model chef you can habe it
#collection, the same thing but for a collection, like the collection of restaurants like top 5 but it is still not
#link to the model, the route will be restaurants/top_5, no link to model, a single routes

#link to model, no need to specify if collection or member. create multiple pages, routes and action
# ==> resources, a bunch or routes that can be collection or member, link to a model, a controller
# linking to a model enable to work with ids

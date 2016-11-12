Rails.application.routes.draw do
  # Routes for the Journey resource:
  # CREATE
  get "/journeys/new", :controller => "journeys", :action => "new"
  post "/create_journey", :controller => "journeys", :action => "create"

  # READ
  get "/journeys", :controller => "journeys", :action => "index"
  get "/journeys/:id", :controller => "journeys", :action => "show"

  # UPDATE
  get "/journeys/:id/edit", :controller => "journeys", :action => "edit"
  post "/update_journey/:id", :controller => "journeys", :action => "update"

  # DELETE
  get "/delete_journey/:id", :controller => "journeys", :action => "destroy"
  #------------------------------

  # Root
  root 'journeys#new'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do

  devise_for :users
  root 'beers#index'

  # Routes for the Brewery_to_beer resource:
  # CREATE
  get "/brewery_to_beers/new", :controller => "brewery_to_beers", :action => "new"
  post "/create_brewery_to_beer", :controller => "brewery_to_beers", :action => "create"

  # READ
  get "/brewery_to_beers", :controller => "brewery_to_beers", :action => "index"
  get "/brewery_to_beers/:id", :controller => "brewery_to_beers", :action => "show"

  # UPDATE
  get "/brewery_to_beers/:id/edit", :controller => "brewery_to_beers", :action => "edit"
  post "/update_brewery_to_beer/:id", :controller => "brewery_to_beers", :action => "update"

  # DELETE
  get "/delete_brewery_to_beer/:id", :controller => "brewery_to_beers", :action => "destroy"
  #------------------------------

  # Routes for the Brewery resource:
  # CREATE
  get "/breweries/new", :controller => "breweries", :action => "new"
  post "/create_brewery", :controller => "breweries", :action => "create"

  # READ
  get "/breweries", :controller => "breweries", :action => "index"
  get "/breweries/:id", :controller => "breweries", :action => "show"

  # UPDATE
  get "/breweries/:id/edit", :controller => "breweries", :action => "edit"
  post "/update_brewery/:id", :controller => "breweries", :action => "update"

  # DELETE
  get "/delete_brewery/:id", :controller => "breweries", :action => "destroy"
  #------------------------------

  # Routes for the Beer resource:
  # CREATE
  get "/beers/new", :controller => "beers", :action => "new"
  post "/create_beer", :controller => "beers", :action => "create"

  # READ
  get "/beers", :controller => "beers", :action => "index"
  get "/beers/:id", :controller => "beers", :action => "show"

  # UPDATE
  get "/beers/:id/edit", :controller => "beers", :action => "edit"
  post "/update_beer/:id", :controller => "beers", :action => "update"

  # DELETE
  get "/delete_beer/:id", :controller => "beers", :action => "destroy"
  #------------------------------


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end

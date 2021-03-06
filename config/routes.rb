FrugalEater::Application.routes.draw do
  devise_for :users
  
  ## It looks like a lot of these routes are not being
  ## used.  If you use resources, make sure you only
  ## create the routes you want.  For example,
  ## resources :dashboard, only: [:index]
  ## See more info in the rails guide here:
  ## http://guides.rubyonrails.org/routing.html#restricting-the-routes-created
  resources :dashboard

  resources :menuitems

  resources :favorites


  root to: "home#index"

# #   Prefix Verb   URI Pattern                    Controller#Action
#         new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
#             user_session POST   /users/sign_in(.:format)       devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
#            user_password POST   /users/password(.:format)      devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)  devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
#                          PATCH  /users/password(.:format)      devise/passwords#update
#                          PUT    /users/password(.:format)      devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
#        user_registration POST   /users(.:format)               devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
#                          PATCH  /users(.:format)               devise/registrations#update
#                          PUT    /users(.:format)               devise/registrations#update
#                          DELETE /users(.:format)               devise/registrations#destroy
#          dashboard_index GET    /dashboard(.:format)           dashboard#index
#                          POST   /dashboard(.:format)           dashboard#create
#            new_dashboard GET    /dashboard/new(.:format)       dashboard#new
#           edit_dashboard GET    /dashboard/:id/edit(.:format)  dashboard#edit
#                dashboard GET    /dashboard/:id(.:format)       dashboard#show
#                          PATCH  /dashboard/:id(.:format)       dashboard#update
#                          PUT    /dashboard/:id(.:format)       dashboard#update
#                          DELETE /dashboard/:id(.:format)       dashboard#destroy
#                menuitems GET    /menuitems(.:format)           menuitems#index
#                          POST   /menuitems(.:format)           menuitems#create
#             new_menuitem GET    /menuitems/new(.:format)       menuitems#new
#            edit_menuitem GET    /menuitems/:id/edit(.:format)  menuitems#edit
#                 menuitem GET    /menuitems/:id(.:format)       menuitems#show
#                          PATCH  /menuitems/:id(.:format)       menuitems#update
#                          PUT    /menuitems/:id(.:format)       menuitems#update
#                          DELETE /menuitems/:id(.:format)       menuitems#destroy
#                favorites GET    /favorites(.:format)           favorites#index
#                          POST   /favorites(.:format)           favorites#create
#             new_favorite GET    /favorites/new(.:format)       favorites#new
#            edit_favorite GET    /favorites/:id/edit(.:format)  favorites#edit
#                 favorite GET    /favorites/:id(.:format)       favorites#show
#                          PATCH  /favorites/:id(.:format)       favorites#update
#                          PUT    /favorites/:id(.:format)       favorites#update
#                          DELETE /favorites/:id(.:format)       favorites#destroy
#                     root GET    /                              home#index
#                     


### Remove all of these unused comments
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

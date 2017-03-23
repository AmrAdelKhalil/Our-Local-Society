Rails.application.routes.draw do

  namespace :tools do
    # get 'schedules/new'
    get 'schedules/:day_id/:slot_id' => 'schedules#edit'
    patch 'schedules/:day_id/:slot_id' => 'schedules#update'
    put 'schedules/:day_id/:slot_id' => 'schedules#update'
    resources :schedules
  end



  #the controller part to tell Devise to see my registrations_controller.rb and my sessions_controller.rb
  devise_for :users, :controllers => {:registrations => 'registrations',sessions: "sessions"}


  devise_scope :user do
    #modifying route to call delete because link_to send a GET request, because browsers can only send GET or POST requests
    get '/users/sign_out' => 'sessions#destroy'
  end

  namespace :actors do
    resources :users
    get '/service/listUsers' => 'users#listUsers'
    get '/service/addFriend/:id' => 'users#addNewFriend'
    get '/service/removeFriend/:id' => 'users#removeFriend'
    get '/service/about' => 'users#about'
  end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'static_pages#welcome'

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

DiningWebsite::Application.routes.draw do

  root "merchant#login"

  #admin
  get "admin_index" =>'admin#admin_index'
  get 'add_new_merchant' => 'admin#add_new_merchant'
  get 'cancel_add_merchant' =>'admin#add_new_merchant'
  get 'modify_merchant_info' =>'admin#modify_merchant_info'
  get 'save_modify_merchant_id' =>'admin#save_modify_merchant_id'
  get 'label_manager' => 'admin#label_manager'

  post 'add_new_merchant' =>'admin#save_new_merchant'
  post 'modify_merchant_info' =>'admin#update_merchant_info'

  delete 'delete_merchant' => 'admin#delete_merchant'
  #user
  get 'login' => 'merchant#login'
  get "merchant_index" =>'merchant#merchant_index'
  get "logout" => 'merchant#logout'

  post "create_login_session" =>"merchant#create_login_session"


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

Rails.application.routes.draw do
  namespace :agenda do
    resources :reserv_msgs
  end

  namespace :agenda do
    resources :reserv_dates
  end

  namespace :catalogs do
    resources :statuses
  end

  namespace :agenda do
    resources :reservations
    get 'reservations/delete/:id' => 'reservations#delete', as: 'delete_reservation'
  end

  namespace :agenda do
    resources :reserv_resources
  end

  namespace :catalogs do
    resources :event_types
    get 'event_types/delete/:id' => 'event_types#delete', as: 'delete_event_type'
  end

  namespace :catalogs do
    resources :headquarters
    get 'headquarters/delete/:id' => 'headquarters#delete', as: 'delete_headquarter'
  end

  namespace :catalogs do
    resources :resources
    get 'resources/delete/:id' => 'resources#delete', as: 'delete_resource'
  end

  namespace :catalogs do
    resources :resource_types
    get 'resource_types/delete/:id' => 'resource_types#delete', as: 'delete_resource_type'
  end

  namespace :catalogs do
    resources :user_resources
  end

  namespace :admin do
    resources :users
    get 'users/delete/:id' => 'users#delete', as: 'delete_user'
  end

  namespace :catalogs do
    resources :departments
    get 'departments/delete/:id' => 'departments#delete', as: 'delete_department'
  end

  namespace :catalogs do
    resources :institutions
    get 'institutions/delete/:id' => 'institutions#delete', as: 'delete_institution'
  end

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

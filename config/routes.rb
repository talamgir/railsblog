Rails.application.routes.draw do

  get 'users/index'

  get 'users/edit'

  get 'users/login'

  get 'users/logout'

  get 'users/profile'

  get 'users/signup'

  get 'users/postsyoulike'

  get 'users/thisweek'

  get 'users/earlier'

  get 'users/bestoftoday'

  get 'users/bestofgroup'

  get 'users/topposts'

get "login" => "users#login", :as => "login"
post "loginverify" => "users#loginverify" , :as => "loginverify"
get "destroy" => "users#destroy", :as => "logout"
get "signup" => "users#signup", :as => "signup"
get "forgotpassword" => "users#forgotpassword", :as => "forgotpassword"
post "secemail" => "users#secemail", :as => "secemail"
get "securitypage" => "users#securitypage", :as => "securitypage"
post "security" => "users#security", :as => "security"
get "confirmation" => "users#confirmation", :as => "confirmation"
post "passwordrecall" => "users#passwordrecall", :as => "passwordrecall"


root :to => "users#show"

resources :users do
  resources :posts
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

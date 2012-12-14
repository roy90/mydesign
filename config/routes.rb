Myorder::Application.routes.draw do

		get "public/upload_documents"
		match "public/upload_documents/:upload" => "public#upload_documents"
	
  get "admin/login"
   match "login" => "admin#login"
   match "logout" => "admin#logout"
   
   get "assistant/login"
  match "login_ass" => "assistant#login"
  match "logout_ass" => "assistant#logout"
   
   get "customer/listcustomer"
   match "senarai_pelanggan" => "customer#listcustomer"
   
   get "admin/service"
   match "services" => "admin#service"
   match "designer/1" => "admin#designer1"
   match "designer/2" => "admin#designer2"
   
   get "admin/login_menu"
   match "role" => "admin#login_menu"
   
   get "admin/index"
   match "home" => "admin#index"
   
   get "order/checkorder"
   match "checkorder" => "order#checkorder"
   match "approved" => "order#apporder"
   match "reply" => "order#replyorder"
   
   get "banner/listbanner"
   match "listbanner" => "banner#listbanner"
   
   get "poster/listposter"
   match "listposter" => "poster#listposter"
   
   get "banner/newbanner"
  match "newbanner" => "banner#newbanner"
  match "senarai_banner" => "banner#listbanner"
     match "detail_banner/:id" => "banner#detailbanner"
	 match "confirmationban/:id" => "banner#confirmationban"
	 match "replybanner" => "banner#replyban"
	 

	 
	 get "poster/newposter"
   match "newposter" => "poster#newposter" 
  match "listposter" => "poster#listbanner"
     match "detailposter/:id" => "poster#detailposter"
	 match "confirmationposter/:id" => "poster#confirmationposter"
	 
	 get "card/newcard"
   match "newcard" => "card#newcard"
   match "listcard" => "card#listcard"
     match "detailcard/:id" => "card#detailcard"
	 match "confirmationcard/:id" => "card#confirmationcard"
	 
	 get "bunting/newbunting"
   match "newbunting" => "bunting#newbunting"
   match "listbunting" => "bunting#listbunting"
     match "detailbunting/:id" => "bunting#detailbunting"
	 match "confirmationbun/:id" => "bunting#confirmationbun"
   

   match "cari_pelanggan" => "customer#findcustomer"
   
   match "ubah_pelanggan" => "customer#editcustomer"
   
   match "neworder" => "customer#addcustomer"
   
   
 
  
   
  
   
  get "banner/newbanner"
  match "newbanner" => "banner#newbanner"
   
  


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end

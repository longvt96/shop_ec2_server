Rails.application.routes.draw do
  devise_for :users, path: "api/users", module: "api"
  namespace :api do
    root 'api#index'
    resources :users, only: [:show, :edit, :update]
    resource :profile
    resources :products do
		collection do 
			get :product_favorites
			post :favorite
			get :product_carts
			post :add_to_cart
			get :find_product
		end	
		delete :unfavorite, on: :member
	end    	
	resources :categories do
		get :search, on: :member
	end
	resources :shops
	resources :comments
  end

end

Rails.application.routes.draw do
  resources :food_items do
  	resources :orders
  end
	get 'menu' => "home#menu"
  get 'contact_us' => "home#contact_us"
  get 'thankyou' => "home#thankyou"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
end

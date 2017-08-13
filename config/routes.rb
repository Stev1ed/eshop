Rails.application.routes.draw do
  devise_for :'users'
  
  get 'cart/controller'

  get 'site/about'
    get'/about'=>'site#about'

  get 'site/contact'
    get'/contact'=>'site#contact'

  get 'site/home'
    get'/home'=>'site#home'
  
  resources :items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get"cart/index"
  
  get "site/about"
  
  get "site/contact"
  
  resources :items
  
  get '/cart' => 'cart#index'
  
  get '/cart/:id' => 'cart#add'
  
  get '/about' => 'site#about'
  
  get '/contact' => 'site#contact'
  
  get '/cart/remove/:id' =>'cart#remove'
  
  get '/clearCart' => 'cart#clearCart'
  

  
  
  root :to => 'site#home'

end

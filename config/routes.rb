Rails.application.routes.draw do
  # devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}

  resources :products do
    resources :comments
  end
  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}
  resources :users 
    root 'static_pages#index'
  


  resources :orders, only: [:index, :show, :create, :destroy]
  
  get 'static_pages/about'

  get 'static_pages/contact' 

  get 'static_pages/index'

  post 'static_pages/thank_you'

  

 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

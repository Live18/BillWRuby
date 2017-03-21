Rails.application.routes.draw do
  resources :products

  resources :orders, only: [:index, :show, :create, :destroy]
  
  get 'static_pages/about'

  get 'static_pages/contact' 

  get 'static_pages/index'

  post 'static_pages/thank_you'

  root 'static_pages#about'

 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

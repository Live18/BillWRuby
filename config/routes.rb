Rails.application.routes.draw do
  resources :products do
    resources :comments
  end
  
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  resources :users 

  resources :orders, only: [:index, :show, :create, :destroy]
  
  get 'static_pages/about'

  get 'static_pages/contact' 

  get 'static_pages/index'

  post 'static_pages/thank_you'

  post 'payments/create'

  root 'static_pages#landing_page'
end

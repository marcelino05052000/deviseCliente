Rails.application.routes.draw do
  devise_for :admins, :controllers => { registrations: 'admins/registrations' }
  devise_for :clientes, :controllers => { registrations: 'users/registrations' }
  devise_scope :cliente do
    get '/clientes/sign_out' => 'devise/sessions#destroy'
  end
  devise_scope :admin do
    get '/admins/sign_out' => 'devise/sessions#destroy'
  end
  get 'home/index'
  get 'users/index'
  get 'users/show'
  get 'users/deletar'
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "home#index"
  # Defines the root path route ("/")
  # root "articles#index"
end

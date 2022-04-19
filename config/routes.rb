Rails.application.routes.draw do
  devise_for :clientes, :controllers => { registrations: 'users/registrations' }
  devise_scope :cliente do
    get '/clientes/sign_out' => 'devise/sessions#destroy'
  end
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "home#index"
  # Defines the root path route ("/")
  # root "articles#index"
end

Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"

  root to: "pages#home"
  get "/about_us", to: "pages#about_us"
  get "/favourites", to: "pages#favourites"
  get "/dashboard", to: "pages#dashboard"


  resources :brands

  resources :projects do
    resources :products, only: [:create]
  end

  resources :suppliers do
    resources :reviews, only: [:new, :create]
  end

  resources :reviews, only: [:destroy]

  resources :supplier_materials, only: [:create, :new]
end

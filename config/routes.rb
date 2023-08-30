Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"

  root to: "pages#home"
  get "/about_us", to: "pages#about_us"
  get "/dashboard", to: "pages#dashboard"


  resources :brands, only: [:new, :create, :edit, :update, :destroy]

  resources :projects do
    resources :products, only: [:create]
  end


  resources :favorites do
    collection do
      get 'compare'
    end
  end

  resources :suppliers do
    resources :reviews, only: [:new, :create]
  end


  resources :reviews, only: [:destroy]

  resources :supplier_materials, only: [:create, :new]
end

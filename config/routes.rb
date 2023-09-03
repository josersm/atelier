Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"

  root to: "pages#home"
  get "/about_us", to: "pages#about_us"
  get "/dashboard", to: "pages#dashboard"


  resources :brands, only: [:new, :create, :edit, :update, :destroy] do
    resources :projects, only: [:index]
	end

  resources :projects, except: [:new] do
    resources :products, only: [:create, :index, :show]
  end


  resources :favorites do
    collection do
      get 'compare'
    end
  end

  resources :suppliers do
    resources :projects, only: [:new ]
    resources :reviews, only: [:new, :create]
		resources :favorites, only: [:create]
    resources :chatrooms, only: :show do
      resources :messages, only: :create
    end
  end


  resources :reviews, only: [:destroy]

  resources :supplier_materials, only: [:create, :new]

end

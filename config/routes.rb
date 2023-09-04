Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"

  root to: "pages#home"
  get "/about_us", to: "pages#about_us"
  get "/dashboard", to: "pages#dashboard"
  get "/inbox", to: "pages#inbox", as: :inbox
  get '/num_suppliers_worked_with', to: 'dashboard#num_suppliers_worked_with'
  get '/num_projects_manufactured', to: 'dashboard#num_projects_manufactured'
  get 'total_products_manufactured', to: 'dashboard#total_products_manufactured'

  resources :brands, only: [:new, :create, :edit, :update, :destroy] do
    resources :projects, only: [:index]
	end

<<<<<<< HEAD
  resources :brands, only: [:new, :create, :edit, :show, :update, :destroy] do
    resources :projects, except: [:destroy] do
      resources :products, except: [:destroy, :edit, :update]
    end
=======
  resources :projects, except: [:new] do
    resources :products, only: [:create, :index, :show]
>>>>>>> d7db14c963934001dfc142d126cc37cfc72740e2
  end

  resources :projects, only: [:destroy] do
    resources :products, only: [:edit, :update]
  end
  resources :products, only: [:destroy]


  resources :favorites do
    collection do
      get 'compare'
    end
  end

  resources :suppliers do
    resources :reviews, only: [:new, :create]
		resources :favorites, only: [:create]
    resources :chatrooms, only: :show do
      resources :messages, only: :create
    end
  end


  resources :reviews, only: [:destroy]

  resources :supplier_materials, only: [:create, :new]


end

Rails.application.routes.draw do
  get    'sessions/new'
	root   'static_pages#home'
	#static_pages routes
	get    '/help', to: 'static_pages#help'
	get    '/about', to: 'static_pages#about'
	get    '/contact', to: 'static_pages#contact'

	#users routes
	get    '/signup', to: 'users#new' 
	post   '/signup', to: 'users#create'
	resources :users


	#login routes
	get    '/login', to: 'sessions#new'
	post   '/login', to: 'sessions#create'
	delete '/logout', to: 'sessions#destroy'

	#account activation routes
	resources :account_activations, only: [:edit]
	#password reset routes
	resources :password_resets,     only: [:new, :create, :edit, :update]

  # get 'static_pages/home'
  # get 'static_pages/help'
  # get 'static_pages/about'
  # get 'static_pages/contact'

	#root 'application#hello'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

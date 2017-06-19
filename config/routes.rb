Rails.application.routes.draw do
	root 'blogs#index'
  	
  	devise_for :users
  	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  	resources :blogs

  	delete 'logout', to: 'sessions#destroy'

	resources :blogs do
		resources :comments, only: [:create]
	end

end

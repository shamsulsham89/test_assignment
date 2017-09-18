Rails.application.routes.draw do
  devise_for :users
  resources :users do
  	collection do
  		get  'assigned_users'
  	end
  end
  resources :projects

  root 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

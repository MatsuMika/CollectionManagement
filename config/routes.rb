Rails.application.routes.draw do

  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "books#index"

	resources :categories, only: [:index, :create, :edit, :update, :destroy]
	resources :books, only: [:new, :create, :show, :create, :edit, :update, :destroy]

end
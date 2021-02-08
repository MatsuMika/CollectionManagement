Rails.application.routes.draw do

  get 'borrowers/new'
  get 'borrowers/index'
  get 'borrowers/edit'
  get 'borrowers/show'
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	root to: 'homes#top'

	resources :categories, only: [:index, :create, :edit, :update, :destroy]
	resources :books

end
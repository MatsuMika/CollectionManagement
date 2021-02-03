Rails.application.routes.draw do

  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "books#index"
  get 'books/show'
  get 'books/edit'

	resources :categories, only: [:index, :create, :edit, :update, :destroy]

end

Rails.application.routes.draw do
  get 'bookmarks/new'
  get 'bookmarks/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "lists#index"

  resources :lists, only: [:index, :new, :create, :show] do
    resources :bookmarks, only: [:new, :create, :destroy]
  end

end

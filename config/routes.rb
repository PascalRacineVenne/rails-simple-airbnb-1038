Rails.application.routes.draw do
  get 'flats/show'
  get 'flats/index'
  get 'flats/new'
  get 'flats/edit'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :flats
end

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :lists, only: [:index, :show, :new, :create] do
    get "bookmarks/new", to: "bookmarks#new"
    post "bookmarks", to: "bookmarks#create"
  end
  delete "bookmarks/:id", to: "bookmarks#destroy"
  # Defines the root path route ("/")
  # root "articles#index"
end

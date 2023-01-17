Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
# root to: "lists#home" get"index", to: "lists#index"

resources :lists, only: [:index, :new, :show, :create] do
    resources :bookmarks, only: [:new, :show, :create, :destroy]
end
  # Defines the root path route ("/")
  # root "articles#index"
  resources :movies
end


# Here are the user actions we want to implement in our app:

# As a user, I can see all my movie lists
# As a user, I can create a movie list
# As a user, I can see the details of a movie list
# As a user, I can bookmark a movie inside a movie list
# As a user, I can destroy a bookmark

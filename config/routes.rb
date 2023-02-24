Rails.application.routes.draw do
  resources :tags do
    get :flashcards, on: member
  end
  resources :flashcards do
    get :tags, on: member
  end
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

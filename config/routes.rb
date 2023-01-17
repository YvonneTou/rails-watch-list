Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'lists#index'
  # Defines the root path route ("/")
  # root "articles#index"
  resources :lists, only: %w[show create edit update] do
    resources :bookmarks, only: %w[new create]
  end
  resources :bookmarks, only: %w[destroy]
end

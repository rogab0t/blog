Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  devise_for :users

  root to: "home#index"

  resources :articles do
    get "user/:user_id", to: "articles#from_author", on: :collection
  end

  resources :categories

  resources :users, only: [:update]

  get "perfil", to: "users#edit"
  #get "articles/user/:user_id", to: "articles#from_author"
  #get "articles/new", to: "articles#new", as: :new_articles
  #get "articles/:id", to: "articles#show"
  #get "articles/:id/edit", to: "articles#edit"
  #get "articles", to: "articles#index"

  #post "articles", to: "articles#create"

  #patch "articles/:id", to: "articles#update", as: :article

  #delete "articles/:id", to: "articles#destroy"
end

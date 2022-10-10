Rails.application.routes.draw do
  devise_for :users
  resources :groups
  resources :budgets
  resources :users
  resources :pages, only: %i[splash]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#splash"
end

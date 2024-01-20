Rails.application.routes.draw do
  root to: "homes#top"
  devise_for :users

  get 'homes/about', to: 'homes#about', as: 'about'
  
  resources :books, only: [:index, :show, :edit]
  resources :users, only: [:index, :show, :edit]
end

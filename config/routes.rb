Rails.application.routes.draw do
  devise_for :users
  root 'homes#top'

  resources :post_images, only: [:new, :create, :index, :show, :destroy]

  get "homes/about" => "homes#about", as: "about"
end

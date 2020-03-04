Rails.application.routes.draw do

  devise_for :users

  root 'homes#top'
  get 'home/about' => 'homes#about'

  resources :books, only:[:index, :show, :edit, :create, :update, :destroy] do
   resource :favorites, only: [:create, :destroy]
   resource :book_comments, only: [:create, :destroy]
  end

  resources :users,only: [:show,:index,:edit,:update]
end

Rails.application.routes.draw do
  devise_for :users
  root 'vegetables#index'
  resources :vegetables do
    member do
      post 'purchase'
    end
    member do
      post "add", to: "favorites#create"
    end
    resources :reviews, only: [:index, :new, :create]
    resources :comments, only: [:create]
    resources :favorites, only: [:index, :destroy, :create]
    # collection do
    #   get 'search'
    # end
  end


    resources :users, only: :show do
    resources :all, only: [:index]
  end
end

Rails.application.routes.draw do
  resources :users, only: [:update] do
    collection do
      get 'edit_profile'
      patch 'withdraw'
    end
    member do
      get 'user_show'
    end
  end
  resources :tweets, only: [:new,:create, :show] do
    resources :comments
  end
  resources :likes, only: [:create, :destroy]
  root to: 'home#top'
  get 'home/top'
  devise_for :users, :controllers => {
    sessions: 'users/sessions',
    :registrations => 'users/registrations',
    omniauth_callbacks: 'users/omniauth_callbacks'
   }


   
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

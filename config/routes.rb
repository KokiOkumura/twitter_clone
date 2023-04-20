Rails.application.routes.draw do
  resource :users, only: [:show,:update] do
    collection do
      get 'edit_profile'
      patch 'withdraw'
    end
  end
  resources :tweets, only: [:new,:create,:show]
  root to: 'home#top'
  get 'home/top'
  devise_for :users, :controllers => {
    sessions: 'users/sessions',
    :registrations => 'users/registrations'
   }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

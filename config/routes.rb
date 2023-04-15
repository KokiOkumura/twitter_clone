Rails.application.routes.draw do
  resource :users, only: [:show] do
    collection do
      get 'edit_profile'
    end
  end
  root to: 'home#top'
  get 'home/top'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

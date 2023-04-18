Rails.application.routes.draw do
  resource :users, only: [:show,:update] do
    collection do
      get 'edit_profile'
    end
  end
  root to: 'home#top'
  get 'home/top'
  devise_for :users, :controllers => {
    :registrations => 'users/registrations'
   }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  root 'fly_boards#index'

  resources :planes, only: :update do
    post :hangar
  end

  namespace :api do
    resources :planes, only: [] do
      post :hangar
    end
  end
end

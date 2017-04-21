Rails.application.routes.draw do
  resources :users, only: [:create, :show, :new]
  resource :sessions, only: [:new, :create, :destroy]
  resources :bands
  resources :albums, except: [:index]
  resources :tracks, except: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

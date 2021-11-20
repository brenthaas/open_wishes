Rails.application.routes.draw do
  root to: 'static#home'

  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  delete :logout, to: 'registrations#logout'
  get :logged_in, to: 'sessions#login'
  create
end
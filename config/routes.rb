Rails.application.routes.draw do
  get '/users', to: 'users#index'
  root 'home#index'
  devise_for :users
  resources :courses

  get 'privacy_policy', to: 'static_pages#privacy_policy'
  get 'landing_page', to: 'static_pages#landing_page'
end

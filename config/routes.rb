# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'pages#main'

  resource :drafts do
    get :guide
  end

  resource :pages do
    get :main
  end

  resources :recipes

  namespace :api do
    resources :tags, only: :index
  end

  resources :tags, only: :create

  resource :settings
end

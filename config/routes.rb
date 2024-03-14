# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'recipes#index'

  resource :drafts do
    get :guide
  end

  resources :recipes

  namespace :api do
    resources :tags, only: :index
  end

  resources :tags, only: :create
end

# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :pages, except: [:show]
  get '/pages/:permalink' => "pages#permalink", as: "permalink"
  resources :books, only: %i[index show]
  resources :categories, only: %i[index show]
  root to: 'books#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

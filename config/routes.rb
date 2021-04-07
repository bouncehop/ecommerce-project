# frozen_string_literal: true

Rails.application.routes.draw do
  resources :books, only: %i[index show]
  resources :categories, only: %i[index show]
  get 'categories/index'
  get 'categories/show'
  get 'books/index'
  get 'books/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

# frozen_string_literal: true

Rails.application.routes.draw do
  get 'users' => 'users#index'

  get 'users/new' => 'users#new'

  post 'users' => 'users#create'

  get 'users/:id/edit' => 'users#edit', as: :user_edit

  patch 'users/:id' => 'users#update', as: :user_update

  delete 'users/destroy' => 'users#destroy'

  get 'users/:id' => 'users#show', as: :user

  root 'users#index'
end

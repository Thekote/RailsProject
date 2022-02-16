# frozen_string_literal: true

Rails.application.routes.draw do
  get 'users' => 'users#index'

  get 'users/new' => 'users#new'

  post 'users/create' => 'users#create'

  get 'users/edit' => 'users#edit'

  put 'users/update' => 'users#update'

  delete 'users/destroy' => 'users#destroy'

  get 'users/:id' => 'users#show', as: :user

  root 'users#index'
end

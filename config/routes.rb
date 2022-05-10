# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  resources :budgets, except: %i[show new create]

  root to: 'home#index'
end

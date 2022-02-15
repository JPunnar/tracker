# frozen_string_literal: true

Rails.application.routes.draw do
  root 'assets#index'
  resources :assets
end

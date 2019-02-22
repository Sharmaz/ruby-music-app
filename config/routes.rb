# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  get 'spotify/search'
  resources :tracks
  resources :playlists

  # Index/Home route
  root to: 'tracks#index'
end

# frozen_string_literal: true

Rails.application.routes.draw do
  resources :tic_tac_toes, only: %i[new create]

  root 'home#index'
end

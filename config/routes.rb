# frozen_string_literal: true

Rails.application.routes.draw do
  resources :tic_tac_toe, only: %i[new create] do
    resources :players, only: %i[new create]
  end

  root 'home#index'
end

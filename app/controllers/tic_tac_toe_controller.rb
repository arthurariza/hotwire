# frozen_string_literal: true

class TicTacToeController < ApplicationController
  def new; end

  def create
    game = TicTacToe.new

    if game.save
      redirect_to new_tic_tac_toe_player_path(game)
    else
      render :new, status: :unprocessable_entity
    end
  end
end

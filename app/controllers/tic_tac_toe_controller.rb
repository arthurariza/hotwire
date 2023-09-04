# frozen_string_literal: true

class TicTacToeController < ApplicationController
  def new; end

  def create
    if TicTacToe.create
      redirect_to new_tic_tac_toe_path
    else
      render :new, status: :unprocessable_entity
    end
  end
end

# frozen_string_literal: true

class TicTacToesController < ApplicationController
  def new
    @tic_tac_toe = TicTacToe.new
  end

  def create
    @tic_tac_toe = TicTacToe.new

    if @tic_tac_toe.save
      redirect_to new_tic_tac_to_path
    else
      render :new, status: :unprocessable_entity
    end
  end
end

# frozen_string_literal: true

class CreateTicTacToes < ActiveRecord::Migration[7.0]
  def change
    create_table :tic_tac_toes, &:timestamps
  end
end

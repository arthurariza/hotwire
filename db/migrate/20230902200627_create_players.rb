# frozen_string_literal: true

class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.string :name
      t.string :character
      t.references :tic_tac_toe, null: false, foreign_key: true

      t.timestamps
    end
  end
end

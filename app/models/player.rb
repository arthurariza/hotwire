# frozen_string_literal: true

class Player < ApplicationRecord
  CHARACTERS = %w[X O].freeze

  belongs_to :tic_tac_toe

  validates :name, presence: true

  before_create :set_character

  private

  def set_character
    self.character = (Player::CHARACTERS - tic_tac_toe.players.pluck(:character)).sample
  end
end

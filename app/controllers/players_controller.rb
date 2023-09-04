class PlayersController < ApplicationController
  def new
    @player = Player.new(tic_tac_toe: game)
  end

  def create
    @player = game.players.new(player_params)

    if @player.save
      redirect_to new_tic_tac_toe_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def player_params
    params.require(:player).permit(:name)
  end

  def game
    @game ||= TicTacToe.find(params[:tic_tac_toe_id])
  end
end

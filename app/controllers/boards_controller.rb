class BoardsController < ApplicationController

  def new
    @board = Board.new
  end

  def create
    @board = Board.new(board_params)
    @board.save
    redirect_to root_path
  end

  private

  def board_params
    params.require(:board).permit(:start_date, :end_date)
  end
end

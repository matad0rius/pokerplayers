class PlayersController < ApplicationController
  def show
    @player = Player.find(params[:id])
  end

  def search_results
    @query = params[:query]
    @players = Player.where('name LIKE ?', "%#{@query}%")
  end

end

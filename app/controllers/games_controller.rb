class GamesController < ApplicationController
  def index
  @games = current_user.games.all
  end
end

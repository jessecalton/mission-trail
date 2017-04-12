class ScoreboardController < ApplicationController

def index
  @scoreboard = Scoreboard.all.sort_by(&:score).reverse
end

def new
@scoreboard = Scoreboard.new
@game = Game.find(session[:id])
@points = @game.battery + @game.money - @game.fomo
@points *= 97
@points = 9999 if @points >= 9999
end

def create
  @game = Game.find(session[:id])
  @points = @game.battery + @game.money - @game.fomo
  @points *= 97
  @points = 9999 if @points >= 9999

  @initials = params[:scoreboard][:initials]
  @score = Scoreboard.create(
    score: @points,
    initials: @initials.upcase
    )
  if @score.save
    redirect_to scoreboard_index_path
  else
    redirect_to new_scoreboard_path
  end
end

end


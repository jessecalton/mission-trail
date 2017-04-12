class ScoreboardController < ApplicationController
include ApplicationHelper
def index
  @scoreboard = Scoreboard.all.sort_by(&:score).reverse
end

def new
@scoreboard = Scoreboard.new
@game = Game.find(session[:id])
  point_calculate
end

def create
  @game = Game.find(session[:id])
  point_calculate

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


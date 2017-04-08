class ResultsController < ApplicationController
  def index
  end

  def show
    @game = Game.find(params[:id])
    @result = Result.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])
    @result = Result.find(params[:id])
    p @result.attr_change.fomo_change

    p @game.fomo

    @game.update_attributes(fomo: (@game.fomo += @result.attr_change.fomo_change))
    @game.battery += @result.attr_change.battery_change
    @game.update_attributes(time: (@game.time += @result.attr_change.time_change))
    @game.money += @result.attr_change.money_change

    redirect_to game_path
  end


end
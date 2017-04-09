class ResultsController < ApplicationController
  def index
  end

  def show
    @event = Event.find(params[:id])
    @game = Game.find(session[:id])
    @result = Result.find(params[:id])

    gon.username = @game.username
    gon.gametext = @result.text
    gon.fomo = @game.fomo
    gon.battery = @game.battery
    gon.time = @game.time
    gon.money = @game.money
  end

  def update
    @game = Game.find(session[:id])
    @result = Result.find(params[:id])
    p @result.attr_change.fomo_change

    p @game.fomo

    @game.update_attributes(fomo: (@game.fomo += @result.attr_change.fomo_change))
    @game.update_attributes(battery: (@game.battery += @result.attr_change.battery_change))
    @game.update_attributes(time: (@game.time += @result.attr_change.time_change))
    @game.update_attributes(money: (@game.money += @result.attr_change.money_change))
    @game.update_attributes(checked_instagram: false)
    @game.update_attributes(checked_tinder: false)

    redirect_to games_path
  end


end
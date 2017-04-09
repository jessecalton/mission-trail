class AttrChangesController < ApplicationController
  def index
  end

  def update
    @game = Game.find(session[:id])
    @attr_change = AttrChange.find(params[:id])

    @game.update_attributes(fomo: (@game.fomo += @attr_change.fomo_change))
    @game.update_attributes(battery: (@game.battery += @attr_change.battery_change))
    @game.update_attributes(time: (@game.time += @attr_change.time_change))
    @game.update_attributes(money: (@game.money += @attr_change.money_change))

    redirect_to games_path
  end
end
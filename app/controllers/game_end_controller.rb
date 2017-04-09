class GameEndController < ApplicationController

  def index
    @game = Game.find(session[:id])
    @fomo = @game.fomo
      if @fomo > 80
        @event = Event.find_by(name: "bad-game-ending")
      elsif @fomo < 80 && @fomo > 40
        @event = Event.find_by(name: "average-game-ending")
      else
        @event = Event.find_by(name: "good-game-ending")
      end
  end
end

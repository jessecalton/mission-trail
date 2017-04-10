class GameEndController < ApplicationController

  def index
    @game = Game.find(session[:id])
    @fomo = @game.fomo
      if @fomo > 80
        @event = Event.find_by(name: "bad_game_ending")
      elsif @fomo < 80 && @fomo > 40
        @event = Event.find_by(name: "average_game_ending")
      else
        @event = Event.find_by(name: "good_game_ending")
      end
  end
end

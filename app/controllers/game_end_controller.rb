class GameEndController < ApplicationController

  def index
    @game = Game.find(session[:id])
    @fomo = @game.fomo

      if @fomo > 80
        @event = Event.find_by(id: 11)
        gon.gametext = @event.text
      elsif @fomo < 80 && @fomo > 40
        @event = Event.find_by(id: 10)
        gon.gametext = @event.text
      else
        @event = Event.find_by(id: 12)
        gon.gametext = @event.text
      end
  end
end

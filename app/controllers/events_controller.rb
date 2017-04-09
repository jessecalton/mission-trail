class EventsController < ApplicationController
  include ApplicationHelper
  def index
    p randomize_event
    redirect_to event_path(@event.id)
  end

  def show


    @game = Game.find(session[:id])
    @event = Event.find(params[:id])

    gon.username = @game.username
    gon.gametext = @event.text
    gon.fomo = @game.fomo
    gon.battery = @game.battery
    gon.time = @game.time
    gon.money = @game.money
    gon.gameimage = "/assets/couple.jpg"
  end
end

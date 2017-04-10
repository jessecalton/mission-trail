class EventsController < ApplicationController
  include ApplicationHelper
  def index
    randomize_event

    @event = @event_array.sample

    redirect_to event_path(@event)
  end

  def show
    @game = Game.find(session[:id])
    @event = Event.find(params[:id])

    p "**********"
    p @event.name
    p "**********"

    gon.username = @game.username
    gon.gametext = @event.text
    gon.fomo = @game.fomo
    gon.battery = @game.battery
    gon.time = @game.time
    gon.money = @game.money
    gon.gameimage = @event.image_url
  end
end




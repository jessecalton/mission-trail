class LocalController < ApplicationController
 include ApplicationHelper

  def index
    @game = Game.find(session[:id])
    @game.update_attributes(talked_to_locals: true)
    @event_array = Event.local
    if @event_array.empty?
      Event.reset_locals
      @event_array = Event.local
    end
    @event = @event_array.sample
    @event.update_attributes(seen?: true)
    @attr_change = @event.attr_change

    gon.username = @game.username
    gon.gametext = @event.text
    gon.fomo = @game.fomo
    gon.battery = @game.battery
    gon.time = @game.time
    gon.money = @game.money
    gon.gameimage = @event.image_url
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
    gon.gameimage = @event.image_url
  end

  def update

  end
end
class GooglemapsController < ApplicationController
  include ApplicationHelper

  def index
    @game = Game.find(session[:id])
    @game.update_attributes(checked_googlemaps: true)
    @event_array = Event.google_maps.where(seen?: false)
    p "***************"
    p @event_array.length
    p "***************"
    if @event_array.empty?
      Event.reset_google_maps
      @event_array = Event.google_maps
    end
    @event = @event_array.sample
    @event.update_attributes(seen?: true)
    redirect_to googlemap_path(@event)



    # @num = rand(50)
    # p @num
    # if @num >= 40
    #   @event = Event.find_by(name: "good-map")
    #   @attr_change = @event.attr_change
    #   gon.gametext = @event.text
    # else
    #   @event = Event.find_by(name: "bad-map")
    #   @attr_change = @event.attr_change
    #   gon.gametext = @event.text
    # end
    # gon.username = @game.username
    # gon.fomo = @game.fomo
    # gon.battery = @game.battery
    # gon.time = @game.time
    # gon.money = @game.money
    # gon.gameimage = "/assets/googlemaps.png"

  end

  def show
    @game = Game.find(session[:id])
    @event = Event.find(params[:id])
  end

  def update

  end

end

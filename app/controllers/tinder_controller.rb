class TinderController < ApplicationController
  include ApplicationHelper

  def index
    @game = Game.find(session[:id])
    @game.update_attributes(checked_tinder: true)
    @num = rand(50)
    p @num
    if @num >= 40
      @event = Event.find_by(name: "good-tinder")
      @attr_change = @event.attr_change
      gon.gametext = @event.text
    elsif @num >= 20 && @num < 40
      @event = Event.find_by(name: "neutral-tinder")
      @attr_change = @event.attr_change
      gon.gametext = @event.text
    else
      @event = Event.find_by(name: "bad-tinder")
      @attr_change = @event.attr_change
      gon.gametext = @event.text
    end
    gon.username = @game.username
    gon.fomo = @game.fomo
    gon.battery = @game.battery
    gon.time = @game.time
    gon.money = @game.money
    gon.gameimage = "/assets/tinder.png"
  end

  def show
  end

  def update

  end

end
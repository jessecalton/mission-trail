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
    elsif @num >= 20 && @num < 40
      @event = Event.find_by(name: "neutral-tinder")
      @attr_change = @event.attr_change
    else
      @event = Event.find_by(name: "bad-tinder")
      @attr_change = @event.attr_change
    end
  end

  def show
  end

  def update

  end

end
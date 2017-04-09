class InstagramController < ApplicationController
  include ApplicationHelper

  def index
    @game = Game.find(session[:id])
    @game.update_attributes(checked_instagram: true)
    @num = rand(50)
    p @num
    if @num >= 40
      @event = Event.find_by(name: "good-insta")
      @attr_change = @event.attr_change
    else
      @event = Event.find_by(name: "bad-insta")
      @attr_change = @event.attr_change
    end




  end

  def show
  end

  def update

  end

end

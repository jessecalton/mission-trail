class EventsController < ApplicationController
  def index
  end

  def show
    @game = Game.find(params[:id])
    @event = Event.find(params[:id])
  end
end
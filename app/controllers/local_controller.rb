class LocalController < ApplicationController
 include ApplicationHelper

  def index
    @game = Game.find(session[:id])
    @game.update_attributes(talked_to_locals: true)
    @event_array = Event.local.where(seen?: false)
    if @event_array.empty?
      Event.reset_locals
      @event_array = Event.local
    end
    @event = @event_array.sample
    @event.update_attributes(seen?: true)
    redirect_to local_path(@event)
  end

  def show
    @game = Game.find(session[:id])
    @event = Event.find(params[:id])
  end

  def update

  end
end
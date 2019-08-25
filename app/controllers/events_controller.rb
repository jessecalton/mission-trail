class EventsController < ApplicationController
  include ApplicationHelper
  def index
    randomize_event
    if @event_array.length == 0
      regenerate_events
      randomize_event
    end
    @event = @event_array.sample
    @event.update_attributes(seen?: true)
    redirect_to event_path(@event)
  end

  def show
    @game = Game.find(session[:id])
    @event = Event.find(params[:id])
  end
end




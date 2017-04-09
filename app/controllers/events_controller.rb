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
    gon.option1 = "/assets/button_option1.png"
    gon.option2 = "/assets/button_option2.png"
    gon.option3 = "/assets/button_option3.png"
    gon.option4 = "/assets/button_option4.png"
    gon.result = "result"
    # gon.resultroute = "/events/'#{@event.id}'"
    gon.option1route = "/events/1/results/1"
  end
end
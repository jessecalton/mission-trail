module ApplicationHelper
  def randomize_event
    @events = Event.all
    @event = @events.sample
  end

  def instagram_check
    @game = Game.find(session[:id])
    @game.checked_instagram = true
    @num = rand(50)
    if @num >= 40
      @event = Event.find_by(name: "good-insta")
      @attr_change = @event.attr_change
    elsif @num < 40
      @event = Event.find_by(name: "good-insta")
      @attr_change = @event.attr_change
    end
    
  end

  def decrease_fomo
    @game = Game.find(session[:id])
    @game.update_attributes(fomo: (@game.fomo += -10))
  end

  def increase_fomo
    @game = Game.find(session[:id])
    @game.update_attributes(fomo: (@game.fomo += 10))
  end

  def time_passes
    @game = Game.find(params[:id])
    @game.time += -5
  end

  def battery_decreases
    @game = Game.find(params[:id])
    @game.battery += -2
  end

  def battery_increases
    @game = Game.find(params[:id])
    @game.battery += 2
  end

  def money_increases
    @game = Game.find(params[:id])
    @game.money += 5
  end

  def money_decreases
    @game = Game.find(params[:id])
    @game.money += -5
  end
end

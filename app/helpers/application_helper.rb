module ApplicationHelper
  def randomize_event
    @events = Event.all
    @event_array = []
    @events.each do |event|
      if event.options.length != 0 && event.seen? == false
        @event_array << event
      end
    end
    @event_array
  end

  def instagram_check
    @game = Game.find(session[:id])
    @game.checked_instagram = true
    @num = rand(50)
    p @num
    if @num >= 40
      @event = Event.find_by(name: "good-insta")
      @attr_change = @event.attr_change
    elsif @num < 40
      @event = Event.find_by(name: "bad-insta")
      @attr_change = @event.attr_change
    end
  end

  def local_event_generator
    @events = Event.all
    @event_array = []
    @events.each do |event|
      if event.name.include?("local") && event.seen? == false
        @event_array << event
      end
    end
    @event_array
  end

  def regenerate_events
    @events = Event.all 
    @events.each do |event|
      if event.options.length != 0 && event.seen? == true
        event.update_attributes(seen?: false)
      end
    end
  end

  def regenerate_local_events
    @events = Event.all 
    @events.each do |event|
      if event.name.include?("local") && event.seen? == true
        event.update_attributes(seen?: false)
      end
    end
  end
end

module ApplicationHelper
  def decrease_fomo
    @game = Game.find(params[:id])
    @game.fomo += -10
  end

  def increase_fomo
    @game = Game.find(params[:id])
    @game.fomo += 10
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

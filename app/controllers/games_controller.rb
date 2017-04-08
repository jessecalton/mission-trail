class GamesController < ApplicationController

  def index
    
  end

  def new
    @game = Game.new(params[:id])
  end

  def create
    if params[:game][:occupation] == "Yoga Instructor"
      @game = Game.new(
        username: params[:game][:username],
        fomo: 50,
        battery: 20,
        money: 20,
        occupation: params[:game][:occupation],
        )
    end
    p @game
    

  end


end

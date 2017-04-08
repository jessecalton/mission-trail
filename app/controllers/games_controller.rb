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
        fomo: 30,
        battery: 20,
        money: 35,
        occupation: params[:game][:occupation],
        )
    elsif params[:game][:occupation] == "Hedge Fund Manager"
      @game = Game.new(
        username: params[:game][:username],
        fomo: 50,
        battery: 20,
        money: 70,
        occupation: params[:game][:occupation],
        )
    elsif params[:game][:occupation] == "Tech Bro"
      @game = Game.new(
        username: params[:game][:username],
        fomo: 50,
        battery: 40,
        money: 50,
        occupation: params[:game][:occupation],
        )
    end
    p @game
    redirect_to @game
  end

  def show
    @game = Game.find(params[:id])

  end

end

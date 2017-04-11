class GamesController < ApplicationController
  include ApplicationHelper

  def index
    @game = Game.find(session[:id])
    if @game.time <= 0
      redirect_to game_end_index_path
    end

    @game = Game.find(session[:id])
    gon.username = @game.username
    gon.gametext = " "
    gon.fomo = @game.fomo
    gon.battery = @game.battery
    gon.time = @game.time
    gon.money = @game.money

  end

  def new
    @game = Game.new(params[:id])

    gon.gametext = "Hedge Fund Manager:\nThe Hedge Fund Manager begins the game with the most money, but the least\namount of phone battery.\nTech Bro:\nThe Tech Bro begins the game with the highest amount of phone battery.\nYoga Instructor:\nThe Yoga Instructor begins the game with the least amount of money,\nbut the lowest level of FOMO. Namaste, brah."
  end

  def create
    if params[:game][:occupation] == "Yoga Instructor"
      @game = Game.create(
        username: params[:game][:username],
        fomo: 30,
        battery: 20,
        money: 35,
        occupation: params[:game][:occupation],
        )
    elsif params[:game][:occupation] == "Hedge Fund Manager"
      @game = Game.create(
        username: params[:game][:username],
        fomo: 50,
        battery: 20,
        money: 70,
        occupation: params[:game][:occupation],
        )
    elsif params[:game][:occupation] == "Tech Bro"
      @game = Game.create(
        username: params[:game][:username],
        fomo: 50,
        battery: 40,
        money: 50,
        occupation: params[:game][:occupation],
        )
    end
    session[:id] = @game.id

    @events = Event.all

    @events.each do |event|
      event.update_attributes(seen?: false)
    end

    redirect_to games_path
  end

  def show
    @game = Game.find(params[:id])
  end

  def update
    redirect_to games_path
  end

end

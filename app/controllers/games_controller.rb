class GamesController < ApplicationController
  include ApplicationHelper

  def index
    @game = Game.find(session[:id])
    @sprite_arr = ["/assets/stopsign.png", "/assets/tree.png", "/assets/blank.png"]

    if @game.time <= 5
      @second_sprite = "/assets/bar.png"
    else
      @second_sprite = @sprite_arr.sample
    end

    gon.sprite_arr = @second_sprite

    if @game.time <= 0 || @game.fomo >= 100
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
    Event.all.each { |event| event.update_attributes(seen?: false) }
  end

  def create

    if params[:game][:occupation] == "Yoga Instructor"
      @game = Game.new(
        username: params[:game][:username],
        fomo: 50,
        battery: 45,
        money: 20,
        occupation: params[:game][:occupation],
        )
    elsif params[:game][:occupation] == "Hedge Fund Manager"
      @game = Game.new(
        username: params[:game][:username],
        fomo: 65,
        battery: 50,
        money: 40,
        occupation: params[:game][:occupation],
        )
    elsif params[:game][:occupation] == "Tech Bro"
      @game = Game.new(
        username: params[:game][:username],
        fomo: 65,
        battery: 70,
        money: 35,
        occupation: params[:game][:occupation],
        )
    end

    if @game.save
      session[:id] = @game.id
      @events = Event.all
      @events.each do |event|
        event.update_attributes(seen?: false)
      end
      redirect_to games_path
    else
      redirect_to new_game_path
    end
  end

  def show
    @game = Game.find(params[:id])
  end

  def update
    redirect_to games_path
  end

end

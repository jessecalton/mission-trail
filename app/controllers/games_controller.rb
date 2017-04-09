class GamesController < ApplicationController
  include ApplicationHelper

  def index
    @game = Game.find(session[:id]
    gon.username = @game.username
    gon.gametext = "Get to Anchor & Hope"
    gon.fomo = @game.fomo
    gon.battery = @game.battery
    gon.time = @game.time
    gon.money = @game.money
    gon.gameimage = "assets/couple.jpg"
    # gon.option1 = "assets/button_option1.png"
    # gon.option2 = "assets/button_option2.png"
    # gon.option3 = "assets/button_option3.png"
    # gon.option4 = "assets/button_option4.png"
    gon.result = "result"
    gon.resultroute = "/games/new"
    gon.option1route = "/games/new"
  end

  def new
    @game = Game.new(params[:id])

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
    p "****************"
    p @game.id
    redirect_to games_path
  end

  def show
    @game = Game.find(params[:id])
  end

  def update
    p "it works"
    redirect_to games_path
  end

end

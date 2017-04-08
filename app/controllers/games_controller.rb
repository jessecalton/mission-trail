class GamesController < ApplicationController

  def index
    @game = Game.first
    gon.gametext = "somebody once told me the world is gonna roll me"
    gon.fomo = "10,0000"
    gon.battery = "140"
    gon.time = "120"
    gon.money = "$40"
    gon.gameimage = "assets/couple.jpg"
    gon.option1 = "dragonfruit vape"
    gon.option2 = "eat the burrito"
    gon.option3 = "run away screaming"
    gon.option4 = "have an awkward conversation"

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

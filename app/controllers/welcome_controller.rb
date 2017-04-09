class WelcomeController < ApplicationController

  def index
    gon.gametext = "Mission Trail"
    gon.gameimage = "assets/couple.jpg"
  end

  def fomo_details
  end

  def game_details
  end

end
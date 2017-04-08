class WelcomeController < ApplicationController

  def index
    gon.gametext = "Mission Trail"
  end

end
class WelcomeController < ApplicationController

  def index
    gon.gameimage = "/assets/mission.jpg"
    gon.gametext = "Your mission, should you choose to accept it: A hip, new, trendy bar has just\nopened in the Marina District All ride-sharing services are nonexistent. You\nhave to make it to this party before your FOMO decreases and you literally\ncan't even. Traveling by foot, you have two hours to make it to the Marina.\nYou are about to witness the struggle of the modern millenial.\n\nThe struggle is real."
  end

  def show
    gon.gametext = "noun, informal\n\nAnxiety that an exciting or interesting event may currently be happening\nelsewhere, often aroused by posts seen on social media.‘Constant real-time\nawareness - through Facebook check-ins and Twitter updates - of the fun\neveryone is having can spark the instant insecurity of FOMO, or fear of missing\nout.’"
  end

end
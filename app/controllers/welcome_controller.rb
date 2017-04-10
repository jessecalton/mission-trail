class WelcomeController < ApplicationController

  def index
    gon.gametext = "Your mission, should you choose to accept it:\nA hip, new, trendy bar has just opened in the\nMarina District All ride-sharing services are\nnonexistent. You have to make it to this party\nbefore your FOMO decreases and you literally\ncan't even. Traveling by foot, you have two\nhours to make it to the Marina. You are about\nto witness the struggle of the modern\nmillenial.\n\nThe struggle is real."
  end

  def show
    gon.gametext = "noun, informal\n\nAnxiety that an exciting or interesting event\nmay currently be happening elsewhere, often\naroused by posts seen on social media.\n‘Constant real-time awareness - through\nFacebook check-ins and Twitter updates - of\nthe fun everyone is having can spark the\ninstant insecurity of FOMO, or fear of missing\nout.’"
  end

end
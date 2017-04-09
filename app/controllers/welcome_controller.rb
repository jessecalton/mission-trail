class WelcomeController < ApplicationController

  def index
    gon.gametext = "Mission Trail
    Your mission, should you choose to accept it:

A hip, new, trendy bar has just opened in the Marina District

All ride-sharing services are nonexistent.

You have to make it to this party before your FOMO decreases and you literally can't even.

Traveling by foot, you have 2 hours to make it to the Marina.

You are about to witness the struggle of the modern millenial. The struggle is real."
    gon.gameimage = "assets/couple.jpg"
  end

  def show
    gon.gametext = "FOMO

NOUN

mass noun

informal

Anxiety that an exciting or interesting event may currently be happening elsewhere, often aroused by posts seen on social media.

‘Constant real-time awareness - through Facebook check-ins and Twitter updates
 - of the fun everyone is having can spark the instant insecurity of FOMO, or fear of missing out.’"
    gon.gameimage = "assets/couple.jpg"
  end

end
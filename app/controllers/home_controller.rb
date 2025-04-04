class HomeController < ApplicationController
  def index
    @collectibles = Collectible.all
  end
end

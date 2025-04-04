class CollectiblesController < ApplicationController
  def show
    @collectible = Collectible.find(params[:id])
  end

  def index
    @collectibles = Collectible.all
  end
end

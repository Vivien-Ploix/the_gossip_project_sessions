class GossipsController < ApplicationController
  def show
    @gossips = Gossip.find(params[:id])
  end
end

class GossipsController < ApplicationController
  def show
    @gossips = Gossip.find(params[:id])
  end


  def new
  	@post = Gossip.new
  end

  def create
  	Gossip.create(title: params[:title], content:params[:content], user_id: User.find(rand(User.first.id..User.last.id))
  end

end

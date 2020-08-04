class GossipsController < ApplicationController

  def show
    @gossips = Gossip.find(params[:id])
  end

  # GET /users/new
  def new
  	@post = Gossip.new
  end

  # POST users
  def create
    id = User.all.sample.id
    Gossip.create(title: params[:title], content:params[:content], user_id: id)
    
  end




end

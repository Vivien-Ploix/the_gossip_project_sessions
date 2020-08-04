class GossipsController < ApplicationController

  def show
    @gossips = Gossip.find(params[:id])
  end

  # GET /users/new
  def new
  	@post = Gossip.new
  end

  # POST /users
  def create
    id = User.all.sample.id
    gossip = Gossip.new(title: params[:title], content:params[:content], user_id: id)

    if gossip.save
      @message = "The super potin was succesfully saved !"
      redirect_to root_path
    else
      @alert = true
      @message = "Error: " + gossip.errors.messages.to_a.flatten[1]
    end
  end




end

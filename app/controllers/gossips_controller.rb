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
    @post = Gossip.new(title: params[:title], content:params[:content], user_id: id)

    if @post.save
      @message = "The super potin was succesfully saved !"
      flash[:success] = "Le livre a été mis à jour."
      redirect_to root_path
    else
      @alert = true
      @message = "Error: " + @post.errors.messages.to_a.flatten[1]
      render new_gossip_path
    end
  end




end

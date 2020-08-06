class UsersController < ApplicationController


  def new
    @user = User.new
  end 


  def create
@user = User.new(user_params)  
    if @user.save
      @message = "You have signed up succesfully, welcome to The Gossip Project !"
      flash[:success] = "You have signed up succesfully, welcome to The Gossip Project  !"
      redirect_to root_path
    else
      @alert = true
      @message = "Error: " + @user.errors.messages.to_a.flatten[1]
      render new_user_path
    end
  end 


  def user_params
    params.require(:user).permit(:first_name, :email, :password, :password_confirmation)
  end

end

class ProfileController < ApplicationController
  def show
    @user = User.find_by(:first_name => params[:id])
  end
end

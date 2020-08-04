class WelcomeController < ApplicationController
  def show
      puts "démarrage"
     @first_name = params[:first_name]
     puts "Ceci est mon super params : #{params}"
     puts "Trop bien ! Et ceci est ce que l'utilisateur a passé dans tel champ : #{params["first_name"]}"
     # @images  = ["https://www.bootdey.com/img/Content/user_1.jpg", "https://www.bootdey.com/img/Content/user_2.jpg", "https://www.bootdey.com/img/Content/user_3.jpg"]
     # @random_no = rand(3)
     # @random_image = @images[@random_no]
  end
end

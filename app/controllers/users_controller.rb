class UsersController < ApplicationController
  def new
   @user = User.new
 end

 # POST /users
 # POST /users.json
 def create
   @user = User.new(user_params)

   if @user.save
     redirect_to root_path, notice: "Hi, #{@user.name}!"
   else
     render :new
   end
 end

 private

   # Never trust parameters from the scary internet, only allow the white list through.
   def user_params
     params.require(:user).permit(:name)
   end

  
end

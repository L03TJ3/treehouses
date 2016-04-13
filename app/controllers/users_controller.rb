class UsersController < ApplicationController
  # GET /users/new
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to root_path, notice: "Hi. #{@user.name}"
    else
      render :new
    end
  end

  private

    def user_params
      params.require(:user).permit(:name)
    end
end

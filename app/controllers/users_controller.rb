class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    User.create(create_params)
    render action: :new
  end

  private
  def create_params
    params.require(:user).permit(:name)
  end
end

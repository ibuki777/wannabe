class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(create_params)
    if @user.save
      redirect_to root_path, notice: "ユーザーを登録しました"
    else
      render :new
    end
  end

  private
  def create_params
    params.require(:user).permit(:name, :password)
    # params.require(:password).permit(:password)
  end
end

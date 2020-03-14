class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    User.create(create_params)
    if @user.save
      redirect_to new_users_path, notice:”ユーザー「#{@user.name}」を登録しました”
    else
      render :new
    end
  end

  private
  def create_params
    params.require(:user).permit(:name)
  end
end

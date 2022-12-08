class Public::UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @user_omikujis = @user.omikujis.order(created_at: :desc)
    today_user_omikujis = @user.user_omikujis.created_today
    today_user_omikuji = today_user_omikujis.order(created_at: :desc).first
    unless today_user_omikuji.nil?
      @today_omikuji = Omikuji.find_by(id: today_user_omikuji.omikuji_id)
    end
  end

  def edit
    @user = User.find(params[:id])
    if @user != current_user
      redirect_to root_path
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      bypass_sign_in(@user)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def password_edit
    @user = current_user
  end

  def password_update
    @user = current_user
    if @user.update(user_params)
      bypass_sign_in(@user)
      redirect_to user_path(@user)
    else
      render :password_edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :encrypted_password)
  end
end

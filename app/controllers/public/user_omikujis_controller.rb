class Public::UserOmikujisController < ApplicationController
  def create
    if user_signed_in?
      if current_user.user_omikujis.created_today.exists?
        today_user_omikuji = current_user.user_omikujis.created_today.order(created_at: :desc).first
        omikuji = Omikuji.find_by(id: today_user_omikuji.omikuji_id)
        flash[:notice] = '引けるのは1日に１回です！'
      else
        omikuji = Omikuji.all.sample
        user_omikuji = current_user.user_omikujis.new(omikuji_id: omikuji.id)
        user_omikuji.save
      end
    else
      omikuji = Omikuji.all.sample
    end
    redirect_to omikuji_path(omikuji)
  end
end

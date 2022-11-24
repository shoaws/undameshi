class Public::UserOmikujisController < ApplicationController
  def create
    omikuji = Omikuji.all.sample
    if user_signed_in?
      user_omikuji = current_user.user_omikujis.new(omikuji_id: omikuji.id)
      user_omikuji.save
    end
    redirect_to omikuji_path(omikuji)
  end
end

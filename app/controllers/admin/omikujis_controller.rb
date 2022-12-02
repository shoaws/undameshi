class Admin::OmikujisController < ApplicationController
  def create
    @omikuji = Omikuji.new(omikuji_params)
    if @omikuji.save
      redirect_to request.referer
    else
      @omikujis = Omikuji.all
      render 'admin/homes/top'
    end
  end

  def destroy
    Omikuji.find(params[:id]).destroy
    redirect_to request.referer
  end

  private

  def omikuji_params
    params.require(:omikuji).permit(:name)
  end
end

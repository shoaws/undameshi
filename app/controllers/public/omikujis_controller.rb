class Public::OmikujisController < ApplicationController
  def new
  end

  def show
    @omikuji = Omikuji.find(params[:id])
  end
end

class Admin::HomesController < ApplicationController
  before_action :authenticate_admin!

  def top
    @omikujis = Omikuji.all
    @omikuji = Omikuji.new
  end
end

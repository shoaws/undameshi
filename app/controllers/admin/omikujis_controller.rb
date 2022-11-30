class Admin::OmikujisController < ApplicationController
  def create
    @omikuji = Omikuji.new
    if @omikuji.save
      
  end
end

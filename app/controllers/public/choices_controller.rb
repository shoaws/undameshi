class Public::ChoicesController < ApplicationController
  def new
  end

  def show
    redirect_to user_path(current_user)
  end

  def easy

  end

  def nomal

  end

  def hard

  end

  def choice
    if request.referer&.include?("easy")
      @ans = [1,2].sample
    elsif request.referer&.include?("nomal")
      @ans = [1,2,3].sample
    else
      @ans = [1,2,3,4,5].sample
    end
    render :result
  end

  def result
    
  end
end

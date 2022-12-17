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
    ans = [1,2].sample
    if ans == 1
      @result = '正解！'
    else
      @result = '残念！'
    end
    render :result
    # redirect_to result_path
  end

  def result

  end
end

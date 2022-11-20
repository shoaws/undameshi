class Public::BingosController < ApplicationController
  def index
    @bingo1 = [*1..15].sample(5)
    @bingo2 = [*16..30].sample(5)
    @bingo3 = [*31..45].sample(5)
    @bingo4 = [*46..60].sample(5)
    @bingo5 = [*61..75].sample(5)
  end
end

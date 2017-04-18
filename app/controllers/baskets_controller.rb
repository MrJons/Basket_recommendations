class BasketsController < ApplicationController


  def index
    @basket_contents = Basket.all
  end

end

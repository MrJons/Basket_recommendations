class BasketsController < ApplicationController


  def index
    @basket_contents = Basket.all
    @basket_total = Basket.basket_total

    @recommendations = Item.recommendations
  end

end

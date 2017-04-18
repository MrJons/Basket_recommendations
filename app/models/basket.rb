class Basket < ApplicationRecord

  def self.basket_total
    total = 0.00
    Basket.all.each do |item|
      total += item.price
    end
    '%.2f' % total
  end

end

require 'basket.rb'

describe Basket do

  before :each do
    Basket.create(product: 'Bread', price: 1.29)
    Basket.create(product: 'Milk', price: 0.99)
    Basket.create(product: 'Wine', price: 8.99)
  end

    it 'totals basket amount' do
      expect(Basket.basket_total).to eq("11.27")
    end

end

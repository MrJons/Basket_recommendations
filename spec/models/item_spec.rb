require 'item.rb'

describe Item do

  context 'when an item does not fulfill criteria' do
    before :each do
      @item = Item.create(name: 'Biscuits', price: 0.80)
      PurchaseDate.create(item_id: @item.id, created_at: "2017-04-14 12:00:00")
      PurchaseDate.create(item_id: @item.id, created_at: "2017-04-01 12:00:00")
    end

    it 'Recommendations are not returned' do
      expect(Item.recommendations).to eq({})
    end
  end

  context 'when an item fulfills criteria' do
    before :each do
      @item = Item.create(name: 'Biscuits', price: 0.80)
      PurchaseDate.create(item_id: @item.id, created_at: "2017-04-14 12:00:00")
      PurchaseDate.create(item_id: @item.id, created_at: "2017-04-07 12:00:00")
    end

    it 'Recommendation is returned' do
      expect(Item.recommendations).to eq({'Biscuits'=>0.80})
    end
  end
  
end

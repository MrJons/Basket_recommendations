# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

item1 = Basket.create(product: 'Bread', price: 1.29)
item2 = Basket.create(product: 'Milk', price: 0.99)
item3 = Basket.create(product: 'Wine', price: 8.99)

@history_item1 = Item.create(name: 'Biscuits')
PurchaseDate.create(item_id: @history_item1.id, created_at: "2017-04-14 12:00:00")
PurchaseDate.create(item_id: @history_item1.id, created_at: "2017-04-07 12:00:00")

@history_item2 = Item.create(name: 'Coffee')
PurchaseDate.create(item_id: @history_item2.id, created_at: "2017-04-14 12:00:00")
PurchaseDate.create(item_id: @history_item2.id, created_at: "2017-04-07 12:00:00")

@history_item3 = Item.create(name: 'Crisps')
PurchaseDate.create(item_id: @history_item3.id, created_at: "2017-04-14 12:00:00")
PurchaseDate.create(item_id: @history_item3.id, created_at: "2017-04-02 12:00:00")

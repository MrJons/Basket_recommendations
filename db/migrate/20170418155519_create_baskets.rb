class CreateBaskets < ActiveRecord::Migration[5.0]
  def change
    create_table :baskets do |t|
      t.string :product
      t.float :price

      t.timestamps
    end
  end
end

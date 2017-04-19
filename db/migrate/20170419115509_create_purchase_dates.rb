class CreatePurchaseDates < ActiveRecord::Migration[5.0]
  def change
    create_table :purchase_dates do |t|
      t.references :item, foreign_key: true

      t.timestamps
    end
  end
end

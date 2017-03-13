class CreateDiscounts < ActiveRecord::Migration
  def change
    create_table :discounts do |t|
      t.references :societies, index: true, foreign_key: true
      t.references :categories, index: true, foreign_key: true
      t.integer :discount_porcentaje

      t.timestamps null: false
    end
  end
end

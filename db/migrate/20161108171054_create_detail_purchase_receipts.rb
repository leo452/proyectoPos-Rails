class CreateDetailPurchaseReceipts < ActiveRecord::Migration
  def change
    create_table :detail_purchase_receipts do |t|
      t.references :purchase_receipt, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true
      t.integer :cantidad
      t.decimal :valor_total

      t.timestamps null: false
    end
  end
end

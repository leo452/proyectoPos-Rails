class CreatePurchaseReceipts < ActiveRecord::Migration
  def change
    create_table :purchase_receipts do |t|
      t.references :product, index: true, foreign_key: true
      t.references :provider, index: true, foreign_key: true
      t.date :fecha
      t.integer :numero_factura
      t.integer :cantidad
      t.decimal :costo_unitario
      t.decimal :valor_total

      t.timestamps null: false
    end
  end
end

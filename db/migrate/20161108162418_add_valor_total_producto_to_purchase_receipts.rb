class AddValorTotalProductoToPurchaseReceipts < ActiveRecord::Migration
  def change
    add_column :purchase_receipts, :valor_total_producto, :decimal
  end
end

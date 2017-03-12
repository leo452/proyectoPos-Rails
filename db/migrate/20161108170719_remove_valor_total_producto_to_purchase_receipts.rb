class RemoveValorTotalProductoToPurchaseReceipts < ActiveRecord::Migration
  def change
    remove_column :purchase_receipts, :valor_total_producto, :decimal
  end
end

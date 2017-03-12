class RemoveCostoUnitarioToPurchaseReceipts < ActiveRecord::Migration
  def change
    remove_column :purchase_receipts, :costo_unitario, :decimal
  end
end

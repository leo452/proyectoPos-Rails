class RemoveCantidadToPurchaseReceipts < ActiveRecord::Migration
  def change
    remove_column :purchase_receipts, :cantidad, :integer
  end
end

class RemoveProductIdToPurchaseReceipts < ActiveRecord::Migration
  def change
    remove_column :purchase_receipts, :product_id, :integer
  end
end

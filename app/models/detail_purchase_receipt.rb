class DetailPurchaseReceipt < ActiveRecord::Base
  belongs_to :purchase_receipt
  belongs_to :product
end

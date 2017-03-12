class PurchaseReceipt < ActiveRecord::Base
  has_many :detail_purchase_receipts
  belongs_to :provider
  accepts_nested_attributes_for :detail_purchase_receipts,reject_if: :all_blank,allow_destroy: true
end

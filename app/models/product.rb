class Product < ActiveRecord::Base
  belongs_to :category
  has_many :detail_purchase_receipts
  has_many :details
end

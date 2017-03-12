class Detail < ActiveRecord::Base
  belongs_to :receipt
  belongs_to :product
end

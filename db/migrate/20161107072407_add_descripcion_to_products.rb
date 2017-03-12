class AddDescripcionToProducts < ActiveRecord::Migration
  def change
    add_column :products, :descripcion, :text
  end
end

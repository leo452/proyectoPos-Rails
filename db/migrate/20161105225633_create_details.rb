class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.references :receipt, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true
      t.integer :cantidad_producto
      t.decimal :precio

      t.timestamps null: false
    end
  end
end

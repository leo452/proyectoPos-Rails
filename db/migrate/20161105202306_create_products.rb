class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.references :category, index: true, foreign_key: true
      t.string :nombre
      t.integer :cantidad
      t.decimal :valor_unitario
      t.decimal :valorC_total
      t.boolean :articulo

      t.timestamps null: false
    end
  end
end

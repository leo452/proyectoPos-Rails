class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.integer :nit
      t.string :nombre
      t.string :departamento
      t.string :ciudad
      t.integer :telefono
      t.string :direccion

      t.timestamps null: false
    end
  end
end

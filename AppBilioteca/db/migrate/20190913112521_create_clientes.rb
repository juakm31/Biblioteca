class CreateClientes < ActiveRecord::Migration[6.0]
  def change
    create_table :clientes do |t|
      t.integer :cod_cliente
      t.string :nombre
      t.string :correo
      t.integer :telefono

      t.timestamps
    end
  end
end

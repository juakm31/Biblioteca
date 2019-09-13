class CreatePrestamos < ActiveRecord::Migration[6.0]
  def change
    create_table :prestamos do |t|
      t.references :cliente, null: false, foreign_key: true
      t.references :libro, null: false, foreign_key: true
      t.date :fecha_prestamo
      t.date :fecha_devolucion

      t.timestamps
    end
  end
end

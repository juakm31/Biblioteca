class CreateLibros < ActiveRecord::Migration[6.0]
  def change
    create_table :libros do |t|
      t.integer :cod_libro
      t.string :nombre
      t.references :autor, null: false, foreign_key: true

      t.timestamps
    end
  end
end

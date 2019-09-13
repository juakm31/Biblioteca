class CreateAutors < ActiveRecord::Migration[6.0]
  def change
    create_table :autors do |t|
      t.integer :cod_autor
      t.string :nombre

      t.timestamps
    end
  end
end

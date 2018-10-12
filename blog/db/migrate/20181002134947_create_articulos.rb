class CreateArticulos < ActiveRecord::Migration[5.1]
  def up
    create_table :articulos do |t|
      t.string :titulo
      t.text :contenido

      t.timestamps
    end
  end
  def down 
    drop_table :articulos
  end
end

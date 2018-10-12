class CreateTemas < ActiveRecord::Migration[5.1]
  def up
    create_table :temas do |t|
      t.string "nombre"
      t.integer "posicion"
      t.boolean "visible", :default => false


      t.timestamps
    end
  end
 
  def down
    drop_table :temas
    

     
    
  end
end

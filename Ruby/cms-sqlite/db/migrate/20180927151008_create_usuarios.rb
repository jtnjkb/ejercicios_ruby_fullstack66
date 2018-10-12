class CreateUsuarios < ActiveRecord::Migration[5.1]
  def up
    create_table :usuarios do |t|
      t.column "primer_nombre", :string
      t.string "primer_apellido", :limit => 50
      t.string "email", :default => '', :null => false
      t.string "password", :limit => 40

      t.timestamps
    end
  end
  def down
    drop_table :usuarios
  end
end

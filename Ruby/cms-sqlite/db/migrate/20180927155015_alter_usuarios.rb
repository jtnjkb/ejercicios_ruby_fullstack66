class AlterUsuarios < ActiveRecord::Migration[5.1]
  def up
    rename_table("usuarios", "admin_usuarios")
    add_column("admin_usuarios", "nombreusuario", :string, :limit => 25, :after =>"email")
    change_column("admin_usuarios","email", :string, :limit => 100 )#By default SQL String limit 255 character 
    #Ex:- :limit => 40)
    rename_column("admin_usuarios", "password", "hashed_password")
    add_index("admin_Usuarios","nombreusuario")

  end
  
  def down
    remove_index("admin_usuarios", "nombreusuario")
    rename_column("admin_usuarios", "hashed_password", "password")
    change_column("admin_usuarios","email",:string, :default =>'', :null => false) #By default SQL String limit 255 character 
    #Ex:- :limit => 40)
    remove_column("admin_usuarios", "nombreusuario")
    rename_table("admin_usuarios", "usuarios")
  end
end

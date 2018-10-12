#1 definicion de metodos
def mi_metodo
    mensaje = "hola worldddd"
    numero = 1
    mensaje + numero.to_s #la ultima linea es lo que retorna, no se usa Return
end

puts mi_metodo

#2 parametros

def otro_metodo(parametro)
    p parametro #p imprimir
end

otro_metodo('estos es un parametro')

def otro_metodo_2(parametro, *parametros)
    p parametro #p imprimir
    p parametros
end

otro_metodo_2('estos es un parametro', 1,5,"otro valor")

#3

def login (usuario:, password:password)
    puts usuario
    puts password
end


login(password:"password",usuario:"John")
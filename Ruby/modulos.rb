module Comunicacion #como Namespace
    CONSTANTE = '2.3.4'
    class Celular
        attr_accessor :marca
        def initialize(marca)
            @marca = marca
        end        
    end
end

puts Comunicacion::CONSTANTE # con :: accede a lo que esta en el modulo

instancia = Comunicacion::Celular.new("Samsung")
instancia2 = Comunicacion::Celular.new("Iphone")
puts instancia.marca
puts instancia2.marca
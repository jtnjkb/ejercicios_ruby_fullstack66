class Vehiculo
    attr_accessor :marca, :modelo
    #attr_writer / solo escritura
    #attr_reader :marca / solo lectura
    def initialize  (marca,modelo)
        @marca = marca
        @modelo = modelo
    end 
    
    def marca
        @marca
    end
    def marca=(value)
        @marca = value
    end

carro = Vehiculo.new("Mazda", 2010)
carro.marca = "BMW"
puts carro.marca
end
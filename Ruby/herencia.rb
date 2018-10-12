class Persona
    attr_accessor :nombre, :apellido
    def initialize(nombre)
        @nombre = nombre
    end

    def hablar
        puts "#{@nombre} dice: Salut"
    end

end
    class Hombre < Persona
        def initialize(nombre)
            super

        end
        def hablar
            super
            puts "La persona dice"
        end
    end    


yo = Persona.new("John")
yo.hablar

hombre = Hombre.new("Persona")
hombre.hablar

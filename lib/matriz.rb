class Matriz
        attr_reader :filas, :columnas

        #Inicialización de la matriz
        def initialize(elementos)
                #Se copian los elementos
                @elementos = Array.new(elementos);
                #Se calculan el número de filas y columnas
                @filas = @elementos.length
                @columnas = @elementos[0].length
                #Se comprueba que los elementos pasados se corresponden con una matriz (dimensiones correctas)
                @filas.times do |i|
                        raise ArgumentError, 'Los elementos pasados no se corresponden con una matriz' unless @elementos[i].length == @columnas
                end
        end
        
end


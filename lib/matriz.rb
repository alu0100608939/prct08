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
   
   #Función para acceder al elemento i, j
   def at(i, j)
      @elementos[i][j]
   end
   
   #Sobrecarga del operador ==
   def == (other)
      iguales = true
      @filas.times do |i|
         @columnas.times do |j|
            if @elementos[i][j] != other.at(i,j)
               iguales = false
            end
         end
      end
      
      return iguales
   end
   
   #Función para el cálculo de la traspuesta
   def traspuesta
      elem = Array.new
      @columnas.times do |i|
         fila = Array.new
         @filas.times do |j|
            fila << @elementos[j][i]
         end
         elem << fila
      end
      Matriz.new(elem)
   end
   
end


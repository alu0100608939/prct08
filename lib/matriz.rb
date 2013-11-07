require "./lib/frac_main.rb"

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
      new_mat = Array.new
      @columnas.times do |i|
         fila = Array.new
         @filas.times do |j|
            fila << @elementos[j][i]
         end
         new_mat << fila
      end
      Matriz.new(new_mat)
   end
   
   #Sobrecarga del operador de suma
   def +(other)
      raise ArgumentError, "Las dimensiones de las matrices no coinciden" unless @filas == other.filas && @columnas == other.columnas
      new_mat = Array.new
      @filas.times do |i|
         fila = Array.new
         @columnas.times do |j|
            fila << @elementos[i][j] + other.at(i, j)
         end
         new_mat << fila
      end
      Matriz.new(new_mat)
   end
   
   #Sobrecarga del operador de resta
   def -(other)
      raise ArgumentError, "Las dimensiones de las matrices no coinciden" unless @filas == other.filas && @columnas == other.columnas
      new_mat = Array.new
      @filas.times do |i|
         fila = Array.new
         @columnas.times do |j|
            fila << @elementos[i][j] - other.at(i, j)
         end
         new_mat << fila
      end
      Matriz.new(new_mat)
   end
   
   def *(other)
      raise ArgumentError, "Las dimensiones de las matrices no coinciden" unless @columnas == other.filas
      new_mat = Array.new
      @filas.times do |i|
         fila = Array.new
         other.columnas.times do |j|
            sum = Fraccion.new(0)
            @columnas.times do |k|
               sum = sum + @elementos[i][k] * other.at(k, j)
            end
            fila << sum
         end
         new_mat << fila
      end
      Matriz.new(new_mat)
   end
   
end


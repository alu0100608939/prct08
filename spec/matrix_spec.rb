require "./lib/matriz.rb"


describe Matriz do
  
   before :each do
      @f1 = Matriz.new([[1,2],[3,4],[5,6]])
   end
 
   describe "La matriz se genera correctamente" do
      it "La matriz tiene formato correcto" do
         expect{ f_1 = Matriz.new([[1,2],[3]]) }.to raise_error(ArgumentError)
      end
   end
 
   describe "Almacenamiento de nº de filas y columnas" do
      it "El numero de filas es correcto" do
         @f1.filas.should eq(3)
      end
      it "El numero de columnas es correcto" do
         @f1.columnas.should eq(2)
      end
   end
   
# describe "Almacenamiento de las matrices" do
#   it "El elemento 0,0 de la matriz se almacena correctamente" do
#   
#   end
#   it "Los elementos de la matriz se almacenan correctamente" do
#     
#   end
# end
#
# describe "Operaciones con una matriz" do
#  it "La traspuesta de la matriz se almacena correctamente" do
#     
#   end
#   
#   it "La	de la matriz se almacena correctamente" do
#     
#   end
# end
# 
# describe "Operaciones con dos matrices" do
#   it "La suma de matrices se realiza correctamente" do
#     
#   end
#   
#    it "La resta de matrices se realiza correctamente" do
#      
#    end
#    it "El producto de matrices se realiza correctamente" do
#    
#    end
#  end
end

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
 
   describe "Almacenamiento de numero de filas y columnas" do
      it "El numero de filas es correcto" do
         @f1.filas.should eq(3)
      end
      it "El numero de columnas es correcto" do
         @f1.columnas.should eq(2)
      end
   end
   
 describe "Igualdad entre matrices" do
   it "Las matrices han de ser iguales" do
     f = Matriz.new([[1,2],[3,4],[5,6]])
     (@f1 == f).should be_true;
   end
 end
 describe "Transformacion de una matriz" do
   it "Matriz traspuesta" do
     f = Matriz.new([[1,3,5],[2,4,6]])
     (@f1.traspuesta == f).should be_true;
   end
 end

 describe "Operaciones con dos matrices" do
  it "La suma de matrices se realiza correctamente" do
    f = Matriz.new([[1,1],[2,2][3,3]])
    (@f1 + f).should eq (Matriz.new([[2,3],[5,6],[8,9]])
   end
   
   it "La resta de matrices se realiza correctamente" do
    f = Matriz.new([[1,1],[2,2][3,3]])
    (@f1 - f).should eq (Matriz.new([[0,1],[1,2],[2,3]])
   end
 end
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

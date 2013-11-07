require "./lib/matriz.rb"


describe Matriz do
  
   before :each do
      @f1 = Matriz.new([[Fraccion.new(1),Fraccion.new(2)],[Fraccion.new(3),Fraccion.new(4)],[Fraccion.new(5),Fraccion.new(6)]])    
   end
 
 
   describe "La matriz se genera correctamente" do
      it "La matriz tiene formato correcto" do
         expect{ f_1 = Matriz.new([[Fraccion.new(1),Fraccion.new(2)],[Fraccion.new(3)]]) }.to raise_error(ArgumentError)
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
     f = Matriz.new([[Fraccion.new(1),Fraccion.new(2)],[Fraccion.new(3),Fraccion.new(4)],[Fraccion.new(5),Fraccion.new(6)]])
     (@f1 == f).should be_true;
   end
 end
 describe "Transformacion de una matriz" do
   it "Matriz traspuesta" do
     f = Matriz.new([[Fraccion.new(1),Fraccion.new(3),Fraccion.new(5)],[Fraccion.new(2),Fraccion.new(4),Fraccion.new(6)]])
     (@f1.traspuesta == f).should be_true;
   end
 end

 describe "Operaciones con dos matrices" do
  it "La suma de matrices se realiza correctamente" do
    f = Matriz.new([[Fraccion.new(1),Fraccion.new(1)],[Fraccion.new(2),Fraccion.new(2)],[Fraccion.new(3),Fraccion.new(3)]])
    (@f1 + f).should eq (Matriz.new([[Fraccion.new(2),Fraccion.new(3)],[Fraccion.new(5),Fraccion.new(6)],[Fraccion.new(8),Fraccion.new(9)]]))
   end
   
   it "La resta de matrices se realiza correctamente" do
    f = Matriz.new([[Fraccion.new(1),Fraccion.new(1)],[Fraccion.new(2),Fraccion.new(2)],[Fraccion.new(3),Fraccion.new(3)]])
    (@f1 - f).should eq (Matriz.new([[Fraccion.new(0),Fraccion.new(1)],[Fraccion.new(1),Fraccion.new(2)],[Fraccion.new(2),Fraccion.new(3)]]))
   end
   it "El producto de matrices se realiza correctamente" do
     a = Matriz.new([[Fraccion.new(2),Fraccion.new(0),Fraccion.new(1)],[Fraccion.new(3),Fraccion.new(0),Fraccion.new(0)],[Fraccion.new(5),Fraccion.new(1),Fraccion.new(1)]])
     b = Matriz.new([[Fraccion.new(1),Fraccion.new(0),Fraccion.new(1)],[Fraccion.new(1),Fraccion.new(2),Fraccion.new(1)],[Fraccion.new(1),Fraccion.new(1),Fraccion.new(0)]])
     (a * b).should eq (Matriz.new([[Fraccion.new(3),Fraccion.new(1),Fraccion.new(2)],[Fraccion.new(3),Fraccion.new(0),Fraccion.new(3)],[Fraccion.new(7),Fraccion.new(3),Fraccion.new(6)]]))
  end
 end
end

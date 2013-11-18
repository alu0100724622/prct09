
require "rspec"
require "matriznyj"


describe "metodo mostrar" do
	before :each do
		@matriz1 = Densa.new(2,2)
		@matriz2 = Densa.new(3,3)
	end

	it "mostrando la matriz 1" do
		
		@matriz1.to_s(1,2,3,4).should eq([[1, 2], [3, 4]])
	end

	it "mostrado la matriz 2" do
		
		@matriz2.to_s(1,2,3,4,5,6,7,8,9).should eq([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
		
	end

end

describe "operaciones aritmeticas" do

	before :each do
		@matriz1 = Densa.new(2,2,1,2,3,4)
		@matriz2 = Densa.new(2,2,1,1,1,1)
		@matriz3 = Densa.new(2,3,1,1,1,2,2,2)
		@matriz4 = Densa.new(2,3,3,3,3,4,4,4)
		@matriz5 = Densa.new(3,3,1,1,1,2,2,2,3,3,3)
		@matriz6 = Densa.new(3,3,4,4,4,5,5,5,6,6,6)
	end

	it "mostrando la suma" do
		
		@matriz1 + @matriz2 == Densa.new(2,2,2,3,4,5)
		@matriz2 + @matriz2 == Densa.new(2,2,2,2,2,2)
		
		@matriz3 + @matriz4 == Densa.new(2,3,4,4,4,6,6,6)
		@matriz3 + @matriz3 == Densa.new(2,3,2,2,2,4,4,4)
		
	end


	it "mostrando la resta" do
		
		@matriz1 - @matriz2 == Densa.new(2,2,0,1,2,3)
		@matriz2 - @matriz2 == Densa.new(2,2,0,0,0,0)
		
		@matriz4 - @matriz3 == Densa.new(2,3,2,2,2,2,2,2)
		@matriz3 - @matriz3 == Densa.new(2,3,0,0,0,0,0,0)
		
	end

	it "mostrando la multiplicacion" do
		
		@matriz1 * @matriz2 == Densa.new(2,2,3,3,7,7)
		@matriz2 * @matriz1 == Densa.new(2,2,4,6,4,6)
		
		@matriz5 * @matriz6 == Densa.new(3,3,15,15,15,30,30,30,45,45,45)
		@matriz6 * @matriz5 == Densa.new(3,3,24,24,24,30,30,30,36,36,36)
		
	end

end

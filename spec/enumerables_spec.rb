require "enumerables"

RSpec.describe Enumerable do
	let(:array){ [1,2,3,4,5]}
	describe '#my_each' do
		it "returns itself" do
			expect(array.my_each{|val| val+3}).to eql(array)
		end
	end

	describe "#my_each_with_index" do
		it "returns itself" do
			expect(array.my_each_with_index{|val| val+3}).to eql(array)
		end
	end

	describe "#my_select" do
		it "returns matching elements" do
			expect(array.my_select{|val| val>3}).to eql([4,5])
		end

		it "returns empty array if no matches found" do
			expect(array.my_select{false}).to eql([])
		end
	end

	describe "my_all?" do
		it "returns true if all elements match" do
			expect(array.my_all?{|val| val < 10 }).to eql(true)
		end

		it "returns false if any element does not match" do
			expect(array.my_all?{|val| val != 5 }).to eql(false)
		end
	end

	describe "my_any?" do
		it "returns true if at least 1 element matches" do
			expect(array.my_any?{|val| val == 5 }).to eql(true)
		end

		it "returns false if none of the elements match" do
			expect(array.my_any?{|val| val > 10 }).to eql(false)
		end
	end

	describe "my_inject" do 
		it "returns sum of the array" do
			expect(array.my_inject{|acc, val| acc + val }).to eql(15)
		end
		it "returns multiplication of the array" do
			expect(array.my_inject{|acc, val| acc * val }).to eql(120)
		end
	end


   describe "my_none?" do
		it "returns false if the condition is satisfied " do
			expect(array.my_none?{|val| val == 5 }).to eql(false)
		end
   end

    describe "my_count?" do
		it "returns the count of the array " do
			expect(array.my_count(3)).to eql(1)
		end
   end 
   
   describe "my_map" do
		it "returns  " do
			expect(array.my_map{|val| val * 2 }).to eql([2,4,6,8,10])
		end
   end	
   describe "multiply_els" do
		it "returns an accumutator of elements of the array  " do
			expect(array.multiply_els).to eql(120)
		end
   end


end
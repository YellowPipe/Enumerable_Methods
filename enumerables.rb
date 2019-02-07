module Enumerable
    def my_each
    	i = 0
      	until self[i] == nil
	      	yield(self[i])
	      	i+=1
      end
    end

    def my_each_with_index
    	i = 0
      	until self[i] == nil
	      	yield(self[i], i)
	      	i+=1
      	end
    end

    def my_select
    	array = []
    	i = 0
      	until self[i] == nil
	      	array.push(yield(self[i], i))
	      	i+=1
      	end
      	return array
    end

    def my_all?
    	i = 0
    	is_true = true
    	until self[i] == nil
	      	if yield(self[i]) == false
	      		is_true = false
	      	end
	      	i+=1
      	end
      	return is_true
    end

    def my_any?
    	i = 0
    	is_true = false
    	until self[i] == nil
	      	if yield(self[i]) == true
	      		is_true = true
	      	end
	      	i+=1
      	end
      	return is_true
    end


 end
 puts 'Each:'
 arr = [1,2,4,5,6]
 arr.my_each {|element| puts element*2}
 puts 'Each with index:'
 arr.my_each_with_index {|element, index| puts index*2}
 puts 'Select:'
 puts arr.my_select{|element| element+2}
 puts 'all?:'
 puts arr.my_all?{|element| element<10}
 puts 'any?:'
 puts arr.my_any?{|element| element>6}
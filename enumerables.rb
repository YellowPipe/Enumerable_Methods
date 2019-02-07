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
          if yield(self[i]) 
             array.push(self[i])
          
          end  
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
    
    def my_none?
       self.my_each do |item|
          return false if yield(item) 
       end    
        return true    
    end  
    
    def my_count(val)
      count = 0
       self.my_each do |item|
          if item == value
            count+=1
          end  
       end    
       count   
    end

    def my_map
      array = []
      i = 0
        until self[i] == nil
          array.push(yield(self[i], i))
          i+=1
        end
        return array

    end   

    def my_inject
        acc = 0
        
        self.my_each do |element|
            acc = yield(acc, element)
        end
        
        acc
    end

    def multiply_els
      

    end
      
 end
 #puts 'Each:'
 arr = [1,2,4,5,6,2,2,5]
 #arr.my_each {|element| puts element*2}
 #puts 'Each with index:'
 #arr.my_each_with_index {|element, index| puts index*2}
 #puts 'Select:'
 #puts arr.my_select{|element| element == 2}
 #puts 'all?:'
 #puts arr.my_all?{|element| element<10}
 #puts 'any?:'
 #puts arr.my_any?{|element| element>6}

 #puts 'none?:'
 #puts arr.my_none?{|element| element ==1}

 #puts 'count:'
 #puts arr.count(5)

puts 'inject:'
puts arr.my_inject{|acc,element| acc + element}



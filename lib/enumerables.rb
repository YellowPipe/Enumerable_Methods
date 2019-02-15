module Enumerable
    def my_each
    	i = 0
      	until self[i] == nil
	      	yield(self[i])
	      	i+=1
      end
      self
    end

    def my_each_with_index
    	i = 0
      	until self[i] == nil
	      	yield(self[i], i)
	      	i+=1
      	end
        self
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
          if item == val
            count+=1
          end  
       end    
       count   
    end

    def my_map(proc=nil)
      array = []
      i = 0
        until self[i] == nil
          if proc
            array.push(proc.call(self[i])) 
          else
            array.push(yield(self[i], i))
          end
          i+=1
        end
        return array

    end   

    def my_inject
        acc = self[0]
        i = 1
        until self[i] == nil
          acc = yield(acc, self[i])
          i+=1
        end
        acc
    end

    def multiply_els
      my_inject{|acc, element| acc*element}
    end
      
 end
 

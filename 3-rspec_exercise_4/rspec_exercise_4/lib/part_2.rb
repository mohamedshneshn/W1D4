 def proper_factors (num)  #(6) => [1,2,3]
    newArr=[] 
    (1...num).each do |n|
        if num%n==0
            newArr<<n
        end
    end
    return newArr
    # (1...num).select { |i| num % i == 0 }   #(6) => [1,2,3] (12) => [1,2,3,4,6]
 end
#  ---------------------------------------------------------------
    def aliquot_sum (num)  #(6) => 6
        proper_factors(num).sum #(6) => [1,2,3] => 6
    end
#  ---------------------------------------------------------------
    def perfect_number? (num)  #(6) => true  true when the number is equal to it's aliquot sum
        num == aliquot_sum(num)  #(6) => 6
    end
#  ---------------------------------------------------------------
    def ideal_numbers (n)   #(3) => [6, 28, 496]
        
        newArr=[]  
        i = 1
        while newArr.length < n 
            if perfect_number?(i) 
                newArr<<i
            end 
            i += 1  
        end  
        newArr
    end 
#  ---------------------------------------------------------------

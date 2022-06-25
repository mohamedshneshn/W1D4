def my_reject(arr, &prc) # &prc is a proc 

   arr.select {|ele| !prc.call(ele)} #selects all elements that do not return true when passed into the proc
end
# ---------------------------------------------------------------
def my_one?(arr, &prc) # &prc is a proc
   # arr.one? {|ele| proc.call(ele)} #returns true if exactly one element returns true when passed into the proc
count = 0
arr.each {|ele| count += 1 if prc.call(ele)}

count == 1
end
# ---------------------------------------------------------------
def hash_select(hash, &prc) # &prc is a proc
    # hash.select {|k, v| proc.call(k, v)} #returns a new hash containing only the key=>value pairs that resulted in true when passed into the proc
   newHash={}
    hash.each do |k, v| 
         if prc.call(k, v)
            newHash[k] = v
         end
    end
    newHash
end
# ------------------------------------------------------ 
def xor_select(arr, prc1, prc2) # prc1 and prc2 are procs [2, 5, 3, 7, 6, -8, -1] =[5, 3, 7, -8]
    
    arr.select {|ele| (prc1.call(ele) || prc2.call(ele)) && ! (prc1.call(ele) && prc2.call(ele))}
            
end
    # ---------------------------------------------------

    def proc_count(value,array)    #value is a number, array is an array of procs
        array.count {|prc| prc.call(value)}  #returns the number of times the proc returns true when passed the value

    end         
# ---------------------------------------------------------------------------------------------------------------------

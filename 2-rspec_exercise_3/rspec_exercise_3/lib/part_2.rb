def element_count(arr) #["cat", "dog", "cat", "cat"] => {"cat"=>3, "dog"=>1}
  hash =Hash.new(0)
  arr.each do |ele|
    hash[ele] += 1
  end
  hash
end
# ----------------------------------------------------
def char_replace!(str, hash) #"hello world",{"l"=>"7", "e"=>"a", " "=>"-", "o"=>"q"} => "ha77q-wqr7d"
                 
str.each_char.with_index do |char,i| #"hello world"
    if hash.has_key?(char)          
        str[i]= hash[char]
    end
end
str
end
# ---------------------------------------------------------
def product_inject(arr) #[4, 2, 5] => 40
    arr.inject do |acc,ele|
        acc*ele
    end
    
end
# ------------------------------------------------------

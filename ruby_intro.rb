# When done, submit this entire file.

# Part 1

def sum arr
  sum=0
  if arr.length==0 || arr==null
    return sum
  end
  0.upto(arr.length-1) do |loop_index|
    sum+=arr[loop_index]
  end  
  return sum
end

def max_2_sum arr
 if arr.length==0
    return 0
  elseif arr.length==1
    return arr[0]
  else
    arr.sort!
    max1=arr[arr.length-1]
    max2=arr[arr.length-2]
    return max1+max2
  end
end

def sum_to_n? arr, n
   for i in 0..arr.length-2
    for j in i+1..arr.length-1
      sum=arr[i]+arr[j]
      if sum!=n
        return false
      end
    end
  end
return true
end

# Part 2

def hello(name)
  return "Hello, "+name
end

def starts_with_consonant? s
  temp=s.downcase
  fir=temp[0]
  if s.length==null||s==null
    return false
  end
  if fir=='a'||fir=='e'||fir=='i'||fir=='o'||fir=='u'
    return true
  end
  return false
end

def binary_multiple_of_4? s
   n=s.length
  if n<=2 
    return false
  end

  for i in 0..n-1
    if s[i]!="1" && s[i]!="0"  #这里不可以写成s[i]!=1
      return false
    end
  end 

  sum=0
  if s[n-1]=="1"        #这里不可以写成s[n-1]==1
    sum=1
  end

 n-2.downto(0) do |i|
    if s[i]=="1"           #这里不可以写成s[i]==1
     	temp=1
     	for k in 1..n-1-i
          temp=temp*2
        end
        sum=sum+temp
     end     
  end  

  if sum%4==0
     return true
  end

 return false
end

# Part 3

class BookInStock
attr_accessor:isbn
  attr_accessor:price

  def initialize(isbn,price)
    if isbn.length==0 || price<=0
       raise ExceptionType,"isbn Or price Error"
    else
       @isbn=isbn
       @price=price
    end   
  end
  
  def price_as_string
    temp="$"+format("%0.2f",@price)
    return temp
  end 
end


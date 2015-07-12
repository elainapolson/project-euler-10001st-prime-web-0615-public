# Implement your procedural solution here!
require 'pry'

#stop adding to prime array when it has n elements

def is_prime?(f) 
  !(2..(f**0.5)).any? {|div| f%div==0 }
end

def prime_number_for(nth)

  prime_array = [2]

  until prime_array.size == nth
    potential_prime = prime_array.last + 1
    while !(is_prime?(potential_prime))
      potential_prime += 1
    end
    prime_array << potential_prime
    
  end
  prime_array.last
end 





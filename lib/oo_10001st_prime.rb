# Implement your object-oriented solution here!

class Prime

  def initialize(n)
    @n = n
    @last_prime = nil
  end

  def is_prime?(f) 
    !(2..(f**0.5)).any? {|div| f%div==0 }
  end

  def number
    prime_array = [2]

    until prime_array.size == @n
      potential_prime = prime_array.last + 1
      while !(is_prime?(potential_prime))
        potential_prime += 1
      end
      prime_array << potential_prime
      
    end
    @last_prime = prime_array.last
  end 

end
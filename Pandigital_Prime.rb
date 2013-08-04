#Pandigital Prime
#We shall say that an n-digit number is pandigital if it makes use of all the digits 1 to n exactly once. 
#for example, 2143 is a 4-digit pandigital and is also prime.
#What is the largest n-digit pandigital prime that exists?

require 'prime'

def is_pan_prime
	prime_array =[]


    
   # if is_prime.prime?
        prime_array << number.to_s
    	dup = prime_array.select {|i| prime_array.count(i) > 1}
    	print dup
   # end
   
end

is_pan_prime
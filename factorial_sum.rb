
#Factorial sum problem -- projecteuler.net
# n! means n × (n − 1) × ... × 3 × 2 × 1
# For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
#and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
#Find the sum of the digits in the number 100!


# my original code
def factorial_sum(max)
  i =1
   sum = max
   
   # get the total sum by doing a loop by counting down from 100,99, 98, etc
   while i < max 
	sum *= max-1 
	max -=1 
   end

   sum_s = sum.to_s

   puts sum_s.split("").inject(0){|accum, value| accum += value.to_i}
end
factorial_sum(100)


# Improved code 
def factorial_sum1(n)
   
   # Way to  get the total factorial of 100
  sum1 = (1..n).inject(:*) || 1
  #2 way to get the total factorial of 100
  sum2 = n.downto(1).inject(:*)


# change sum to string, then split it up.  
# using sum2,  you can can sum2.to_s to sum1.to_s to test it.
# Use inject to read each value and add it back as an intiger using to_i
    sum2_s = sum2.to_s
    puts sum2_s.split("").inject(0){|accum, value| accum += value.to_i}
end
factorial_sum1(100)

#3 improve code one liner
def factorial_sum2(n)
	# one liner,  using the above method refractor code
	puts ((1..n).inject(:*) || 1).to_s.split("").inject(0){|accum, value| accum += value.to_i}
end    

factorial_sum2(100)
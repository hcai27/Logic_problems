
# Power digit sum problem - projecteuler.net
#2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
#What is the sum of the digits of the number 2^1000?
def sum_power
	sum =  2**1000
	puts sum

	sum_s = sum.to_s
    puts sum_s.split("").inject(0){|accum, value| accum += value.to_i}
    #some how sum_s.length doesn't work
    #puts (0...(sum_s.length)).inject(0){|accum, value| accum += (sum_s[value] - ?0)}

   #puts "1230989".length
end

sum_power
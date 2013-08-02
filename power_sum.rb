require 'pry'
def sum_power
	sum =  2**1000
	puts sum

	sum_s = sum.to_s
    puts sum_s.split("").inject(0){|accum, value| accum += value.to_i}
    #puts (0...(sum_s.length)).inject(0){|accum, value| accum += (sum_s[value] - ?0)}
binding.pry
   #puts "1230989".length
end

sum_power
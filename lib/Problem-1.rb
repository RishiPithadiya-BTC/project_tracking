=begin

Problem 1 
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
The sum of these multiples is 23. Find the sum of all the multiples of 3 or 5 below N.

=end

#Method for finding sum belou 'num' numbers
def find_sum(num)

	#Initializing Variables
	i = 3;sum = 0
  	
  	#Loop for calculating sum of values which is divisible by 3 & 5
  	while i < num
      	sum+=i if i%3==0 || i%5==0
    	i+=1
  	end

  	#Return Sum
  	sum
end

#User Input
print "\nEnter Number to find Sum : ";n=gets.chomp!

#Method calling and Output
puts "\nSum of numbers which is multiplies of 3 and 5 below #{n} is : #{find_sum(n.to_i)}\n\n"
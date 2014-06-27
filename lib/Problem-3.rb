
=begin

Problem 3
Mark and Jane are very happy after having their first kid. Their son is very fond of toys, 
so Mark wants to buy some. There are N different toys lying in front of him, tagged with their prices, 
but he has only $K. He wants to maximize the number of toys he buys with this money.

=end

#Method that will return Array of Names of Purchased Toys
def purchase_toys(number_of_toys,available_money)
  
  #Variables Initialization
  i=0;toys={};s='a';sum=0;purchased_toys=[]
  
  #Make Hash of Toys (Assumes that the name of 1st toy starts with 'a' and its price is 1)
  while i < number_of_toys 
    toys[s]=i+1
    s.next!
    i+=1
  end
  
  #Print Toys and Money
  puts "\nToys are : \nToy\tPrice"
  toys.each{|k,v| puts "#{k}\t$#{v}"}
  puts "\nMoney is : $#{available_money}\n\n"

  i=0
  #Calculation of How much money is remaining and Purchased toys will be stored in purchased_toys array
  while i < number_of_toys
  	sum+=toys[toys.keys[i]]	
  	if sum <= available_money 
  	  purchased_toys	<< toys.keys[i]
  	else
  	  remaining_money = available_money-sum+toys[toys.keys[i]]	
  	end
  	i+=1
  end
  return purchased_toys,remaining_money
end

#User Input for Number of Toys and Available Money
print "\nHow Many Toys are There : ";ty=gets.chomp!
print "How Much Money is There : ";my=gets.chomp!

#Method calling and Final Output
toys,money = purchase_toys(ty.to_i,my.to_i)
puts "Purchased Toys are : #{toys}\nRemaining Money is : #{money}\n\n"


=begin

Problem 2
It is possible to write five as a sum in exactly six different ways:

4 + 1
3 + 2
3 + 1 + 1
2 + 2 + 1
2 + 1 + 1 + 1
1 + 1 + 1 + 1 + 1

How many different ways can N be written as a sum of at least two positive integers?

=end

#Method for Print elements of 'arr' up to 'n'
def print_array(arr,n)
    i=0
    while i < n-1
        print "#{arr[i]} + "
        i+=1
    end
    puts "#{arr[i]}"
end
 
#Method for Finding all Unique Parts of Array
def print_all_unique_parts(n)

    p=[]      # An array to store a partition
    k = 0     # Index of last element in a partition
    p[k] = n  # Initialize first partition as number itself
 
    # This loop first prints current partition, then generates next
    # partition. The loop stops when the current partition has all 1s
    while true
        # print current partition
        print_array(p, k+1) if p[k]!=n
 
        # Generate next partition
 
        # Find the rightmost non-one value in p[]. Also, update the
        # rem_val so that we know how much value can be accommodated
        rem_val = 0
        while (k >= 0 && p[k] == 1)
            rem_val += p[k]
            k-=1
        end
 
        # if k < 0, all the values are 1 so there are no more partitions
        return if (k < 0)  
 
        # Decrease the p[k] found above and adjust the rem_val
        p[k]-=1
        rem_val+=1
 
 
        # If rem_val is more, then the sorted order is violeted.  Divide
        # rem_val in differnt values of size p[k] and copy these values at
        # different positions after p[k]
        while (rem_val > p[k])
            p[k+1] = p[k]
            rem_val = rem_val - p[k]
            k+=1
        end
 
        # Copy rem_val to next position and increment position
        p[k+1] = rem_val
        k+=1
    end
end

#User Input
print "\nEnter Number to Show Partial Sum of Parts : ";num=gets.chomp!;puts "\nParts are :"
print_all_unique_parts(num.to_i)

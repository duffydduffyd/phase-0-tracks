# Solving Problems with Data Structures 11/27/16
# Denise Duffy with Maureen Riley

# Release 0
array = [5, 10, 15, 25]

def search_array(array, integer)
	# determine if integer is in the array and return index
	index = 0
	array.each do |number|
	  if number == integer
	  	return index
	  end	
		index = index + 1
		end
	return nil	
end

p search_array(array, 7)


def search_array2(array, integer)
	# determine if integer is in the array and return index, solution 2
	array.length.times do |index|
		return index if array[index] == integer
	end	
	return nil
end

p search_array(array, 7)



# Release 1: Calculate Fibonacci Numbers
# Write a method that takes a number of Fibonacci terms & returns an array of the terms
def fib(term)
    fib_results = []
    i = 0
    while i < term
        if i == 0
            fib_calculation = 0
        elsif i == 1
            fib_calculation = 1
        else
            fib_calculation = fib_results[i - 1] + fib_results[i - 2] 
        end
        fib_results.push(fib_calculation)
        i += 1
    end
    return fib_results
end
p fib(1)
p fib(2)
p fib(3)
p fib(4)
p fib(100)[99]



# Release2: Investigate insertion Sorting 
# General psuedocode for insertion sorting:
# Create a new, empty array in which to store final output 
# Insert pivot value aka the first value from the initial array in the new array
# Compare each item in the initial array with the items in the new array (excluding the pivot value)
# If the item is less than the current item, insert the item before the current item
# If it is not, move to the next item in the new array
# If all of the items in the new array are less than item, insert item in the end of new array
# After iterating, method returns the new, sorted array
#Define insertion sorting method
def insertion_sorting(initial_array)
# Create new array where output will be stored
# Insert pivot value (first item of the inital array into the new array)
final_array = [initial_array[0]]
# Delete at 0 to index at 1 because the pivot value it already sort wrt itself
initial_array.delete_at(0)
# Compare each item in initial array that of the final array 
for number in initial_array 
#Initialize index counter 
    final_array_index = 0
# While the index/position of the final array is less than the length of the final array
    while final_array_index < final_array.length
# Compare the item to the item at the current position of the final array
# If the item (number) is less than the current item (number) 
# Insert the item at the position / index before the current item
            if number <= final_array[final_array_index]
                final_array.insert(final_array_index, number)
                break
# Otherwise, compare the item to the final array index/position to the left (moving from right to left)
            elsif final_array_index == final_array.length - 1
# If all of the items in the final are less than item, insert item in the end of new array
                final_array.insert(final_array_index + 1, number)
                break
            end 
# Increment index counter/position
        final_array_index +=1
    end 
end
# Return final array
final_array
end 
#Provide array to sort 
initial_array = [5, 10, 7, 12, 16, 1, 4]
# After iterating, call method to sort and return the final, new
puts insertion_sorting(initial_array)

# resources: https://medium.com/ruby-on-rails/insertion-sort-algorithm-ruby-c74e72cd115#.vfdgy1v07

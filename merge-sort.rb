def merge_sort(array)
	return array if array.length <= 1
  puts "Split array of #{array.length} into:"
	first_half = array[0..(array.length / 2) -1]
  p first_half
	second_half = array[first_half.length..-1]
  p second_half
	a = merge_sort(first_half)
	b = merge_sort(second_half)
  puts "Merged #{first_half} and #{second_half}"
  merge(a,b)
end

def merge(a, b)
  sorted_arr = []
  until a.empty? || b.empty?
    a[0] < b[0] ? sorted_arr << a.shift : sorted_arr << b.shift #Adds smallest number to the array until one array is empty
  end
  sorted_arr + a + b #Adds the remainder of the non-empty array
end

p merge_sort([73,4,24,10,6,50,82,3])

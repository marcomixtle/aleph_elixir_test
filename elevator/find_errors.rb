def find_errors(list)
	times = Hash.new(0)
	list.each { |word| times[word] += 1 }

	return times
end

input = []
find_errors(input)
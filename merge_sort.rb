def merge_sort(array, working = [],temp = [], initial = true, finished = false)

	if array == [] and working == [] and temp != [] and !finished
		if temp.length == 1
			finished = true
			return	merge_sort(temp[0],working,[], initial, finished) #push temp to array

		else
			return	merge_sort(temp,working,[], initial, finished) #push temp to array
		end
	end
	if initial and !array[0].kind_of?(Array) and !finished
		array = array.collect {|n| [n]}
		initial == false
	end
	if !initial and !array[0].kind_of?(Array) and finished
		return array
	end

	if array != [] and working == [] and !finished
		if array.length > 1
			return merge_sort(array, [array.shift, array.shift], temp.unshift([]), initial, finished)
		elsif array.length == 1
			return merge_sort([], [array[0]], temp.unshift([]), initial, finished)
		end
	end

	if working != [] and !finished

			if working.length > 1
				if working[0][0] <= working[1][0]
					temp[0] << working[0][0]
					working[0].shift
					working.shift if working[0] == []
					return merge_sort(array, working, temp, initial, finished)

				else
					temp[0] << working[1][0]
					working[1].shift
					working.pop if working[1] == []
					return merge_sort(array, working, temp, initial, finished)

				end
			elsif working.length == 1 and working[0].length > 0
				temp[0] << working[0][0]
				working[0].shift
				if working[0] == []

					return merge_sort(array, [], temp, initial, finished)
				else
					return merge_sort(array, working, temp, initial, finished)

				end
			end

	end
	array
end

puts merge_sort([11,6,1,44,6,9,0,1,23,4,32,6,9, 1, 55, 99, 2, 11,6,1,44,6,9,0,1,23,4,32,6,9, 1, 55, 99, 2]).to_s 

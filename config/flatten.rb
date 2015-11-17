def flatten(array)
	flattened_array = []
	array.each do |value|

		while value.class == Array
			value = []
			value.each do |val|
				value = nil
				value << val
			end
		end
		flattened_array << value
	end
end

p flatten([1,2,3,[4,5]])
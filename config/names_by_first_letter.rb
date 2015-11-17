def names_by_first_letter(names_array)
	hash = Hash.new { |h, k| h[k] = Array.new }
	names_array.each do |name|
		first_letter = name.split("")[0]
		hash[first_letter] << name
	end
	hash
end

p names_by_first_letter(["Alex", "Peter", "Adam", "Jim", "Paul"])
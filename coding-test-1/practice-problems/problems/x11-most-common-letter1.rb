# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def most_common_letter(string)
	winning_letter = ""
	winning_count = 0

	string.length.times do |x|
		letter = string[x]
		count = 0
		string.length.times do |y|
			count += 1 if string[y] == letter
		end
		if count > winning_count
			winning_letter = letter
			winning_count = count
		end
	end
	return [winning_letter, winning_count]
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'most_common_letter("abca") == ["a", 2]: ' +
  (most_common_letter('abca') == ['a', 2]).to_s
)
puts(
  'most_common_letter("abbab") == ["b", 3]: ' +
  (most_common_letter('abbab') == ['b', 3]).to_s
)
